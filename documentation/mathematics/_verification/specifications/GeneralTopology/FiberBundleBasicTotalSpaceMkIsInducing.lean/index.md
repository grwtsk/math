# Verification target: Fiber Bundle Basic Total Space Mk Is Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34f734bf8c82a2c5da569b500ff6e1956cc31e9d",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/index.md) · [Full source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34f734bf8c82a2c5da569b500ff6e1956cc31e9d`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.FiberBundle.Trivialization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FiberBundle](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiberbundle.md) | 181 | `declaration-track:4efe4382cda23678319b060fc171e4a2f4d79a35d70f9d985bce89006186bf17` |
| 2 | `theorem` | [totalSpaceMk_isInducing](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspacemk-isinducing.md) | 192 | `result-track:540295b9978bb66b07cf9f90e799350332a2adace730ebe672aeb702a3758729` |
| 3 | `abbrev` | [trivializationAtlas](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivializationatlas.md) | 197 | `declaration-track:2269e05c1e012751fcc8d80eb28534cd62ab681f4382ff4d37c879c0f91c79ee` |
| 4 | `abbrev` | [trivializationAt](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivializationat.md) | 200 | `declaration-track:e0fcee350856aadfd23862cbf1e6ba402a85293c229f515ac624b05c21615ddb` |
| 5 | `theorem` | [mem_baseSet_trivializationAt](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-baseset-trivializationat.md) | 202 | `result-track:dda736883c18f77deedb864121d2667630a3fe20706e324cdee5de8743dbfe27` |
| 6 | `theorem` | [trivialization_mem_atlas](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivialization-mem-atlas.md) | 205 | `result-track:9ca396d08eb3668b097097417cccc1b6183da95fdf72db6501912ebf84de9836` |
| 7 | `class` | [MemTrivializationAtlas](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/memtrivializationatlas.md) | 222 | `declaration-track:3ff69fedb5da9b60b848267039e0c7afee5fb61bc96f992471f23ab1a343c6b4` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:7e8e89f752dd6081dec3d7d02fdd25abe510309ee2fd23f23013b9ec677566f6` |
| 9 | `theorem` | [map_proj_nhds](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/map-proj-nhds.md) | 233 | `result-track:530a89ea341ea9f630fbb4bac488fa44449c16d7a3b41d64b6ac58e1b47685e7` |
| 10 | `theorem` | [continuous_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-proj-source-edition-3.md) | 241 | `result-track:b6a3925aadf168edb516bd6efc8a840a354b2ab07aaa50306aa2d23fe301b602` |
| 11 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/isopenmap-proj-source-edition-2.md) | 245 | `result-track:fad9a1dbbf167d966357de013f0703db23adbe65843ccb4247a6f70e9cc146c6` |
| 12 | `theorem` | [surjective_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/surjective-proj.md) | 250 | `result-track:b0d1de6bb89421f1c879d8beffa93e29e44a5d82edc972dffeda7da9504cbd49` |
| 13 | `theorem` | [isQuotientMap_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/isquotientmap-proj.md) | 257 | `result-track:352006254a278c001103200bf224fd4d49e51c7533bc24de191bbae4c3b7f133` |
| 14 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-totalspacemk.md) | 263 | `result-track:5fbf989691be3d01d218fc02c0fc781c663d224279f574c308031a25f7378a5e` |
| 15 | `theorem` | [totalSpaceMk_isEmbedding](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspacemk-isembedding.md) | 266 | `result-track:dad8dd716e4b112d7bc6106a66e69f7cd30fe715b52c04cfafa07979104468bd` |
| 16 | `theorem` | [totalSpaceMk_isClosedEmbedding](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspacemk-isclosedembedding.md) | 272 | `result-track:c3971b28efee1360b7a13cb6961c908d487371e86c4039c063c209ec133ab100` |
| 17 | `theorem` | [mem_trivializationAt_proj_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-trivializationat-proj-source.md) | 281 | `result-track:aac46f2855e43e217412916fc5cb4f1c46cd0c0c43fe970ca449e9b7ff977bde` |
| 18 | `theorem` | [trivializationAt_proj_fst](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivializationat-proj-fst.md) | 285 | `result-track:24aceb12b8f8964a3de41dff5bf7635ca1e72b7ec3a706b417088a35be3a86d5` |
| 19 | `theorem` | [continuousWithinAt_totalSpace](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuouswithinat-totalspace.md) | 294 | `result-track:828e01b6747e68e836dd11a5effee00cc9f0c4f60c7b5142cffb664d13ff6c2b` |
| 20 | `theorem` | [continuousAt_totalSpace](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuousat-totalspace.md) | 301 | `result-track:a7e135ac40939f13c41c054c81ce5c1c662ad4e18cd0a3bf6c623d60c3664432` |
| 21 | `theorem` | [FiberBundle.exists_trivialization_Icc_subset](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiberbundle-exists-trivialization-icc-subset.md) | 314 | `result-track:11200b78f7ea19e4669f233085c12a915164ae2195431566e949310c8c5e254d` |
| 22 | `structure` | [FiberBundleCore](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiberbundlecore.md) | 391 | `declaration-track:1979158dc01095c62050aab8b242983708710714295ade3283b8217172b59aa9` |
| 23 | `def` | [Index](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/index.md) | 410 | `declaration-track:b1a6f999ea17e6916416f8ad5b323804217ce011276ebe24f20b509c1b408f35` |
| 24 | `def` | [Base](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/base.md) | 414 | `declaration-track:f7c13df0645ad78ecfbd11254011740382bbae557ec9b39f779e6b2a93b8e7fa` |
| 25 | `def` | [Fiber](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiber.md) | 419 | `declaration-track:486dc88c1294aa3c57e0eaa56aebf9a2b759effbd01d0b2d5bfa6b92ff639f8e` |
| 26 | `instance` | [topologicalSpaceFiber](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/topologicalspacefiber.md) | 421 | `declaration-track:b24226584e145820ca2f1db154c98946c6dcefe812f361b8787170ccb75b1840` |
| 27 | `abbrev` | [TotalSpace](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspace.md) | 425 | `declaration-track:d27361f1a157845c14b33fdcc00c8fb228bd190d701804ee7dd038d91444d8db` |
| 28 | `def` | [proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/proj.md) | 429 | `declaration-track:bee47163a4ae975a13b91f5c9de33a9c451c8a7e77f5507a313e4b5aeb0a4cd3` |
| 29 | `def` | [trivChange](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivchange.md) | 433 | `declaration-track:7775e6bac90f679beacf198f4b0358c6eb235b9c5c46a91167db957529034fbd` |
| 30 | `theorem` | [mem_trivChange_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-trivchange-source.md) | 460 | `result-track:b66e639bf9b394a8d0ab9fbb73ec828dec20e9ad26c8bbb02437d273fdbf45a8` |
| 31 | `def` | [localTrivAsPartialEquiv](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv.md) | 472 | `declaration-track:3958257c6da37ab4411a7bb7fe2997df5db489b23bb171a0bb6daed3242fe536` |
| 32 | `theorem` | [mem_localTrivAsPartialEquiv_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtrivaspartialequiv-source.md) | 495 | `result-track:90806636ebb2ad3ea0d806c158091d2c759fb5ada74f79b8aa1f2677bf27d62f` |
| 33 | `theorem` | [mem_localTrivAsPartialEquiv_target](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtrivaspartialequiv-target.md) | 499 | `result-track:6e37537e6bef43c8fd34afb855994465f2ec9765ef7995b5e7bbf01d28c51e68` |
| 34 | `theorem` | [localTrivAsPartialEquiv_apply](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-apply.md) | 504 | `result-track:aba33b033ce875788a0ad75908cb6d4c432fb788d77c11079b2418226903cd74` |
| 35 | `theorem` | [localTrivAsPartialEquiv_trans](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-trans.md) | 509 | `result-track:bfa8c4fea36832761809b9e29b1b5f7a181cfb030da221f3d4b127867f0b1f99` |
| 36 | `instance` | [toTopologicalSpace](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totopologicalspace.md) | 525 | `declaration-track:a896d817cda6d97eb827929cc6abf6305cff7c5b17b07ee86c44bc7d40c46450` |
| 37 | `theorem` | [open_source'](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/open-source.md) | 531 | `result-track:9e2559ef20a41931892fde363f595651941d6680547887a482df154793e70c22` |
| 38 | `def` | [localTriv](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtriv.md) | 541 | `declaration-track:830dea173e1e63ec6fb25cb2276233b196987ef888ba2bca68649948f8eab8b1` |
| 39 | `def` | [localTrivAt](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivat.md) | 578 | `declaration-track:f796af754e52c51096b4e5fc46f79a2b7bbf5f660b4fea5e2b6c2defdac211b5` |
| 40 | `theorem` | [localTrivAt_def](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivat-def.md) | 582 | `result-track:50538302d106bdacfe4be78d92e7148ea1096b093fbf23da4ff6805d71a7419c` |
| 41 | `theorem` | [localTrivAt_snd](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivat-snd.md) | 585 | `result-track:2b78342a941e44780525ca91ac48674fdbd2d79eec63578c18302ed1667085be` |
| 42 | `theorem` | [continuous_const_section](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-const-section.md) | 593 | `result-track:ba34b3f062bf79ced506a4a42c3927503df221b2a8bc9124a3073b5617937541` |
| 43 | `theorem` | [localTrivAsPartialEquiv_coe](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-coe.md) | 608 | `result-track:9f00c005af69eff727e9cddc778a0eff6c277c6c7a45e7a443b36997973b6be4` |
| 44 | `theorem` | [localTrivAsPartialEquiv_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-source.md) | 612 | `result-track:ebb61c56224285e8d56c515c4f6138c371273c14094481f1f82e48ecf2e8f177` |
| 45 | `theorem` | [localTrivAsPartialEquiv_target](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-target.md) | 617 | `result-track:e600c1aeaa30323d1e4aa260b958833eed236d4a7c9209af2c80b488d01fb94d` |
| 46 | `theorem` | [localTrivAsPartialEquiv_symm](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivaspartialequiv-symm.md) | 622 | `result-track:9a867740e99bb58a2f05f8f96435458c10688f3f0759c0cf4481cefe264afbc7` |
| 47 | `theorem` | [baseSet_at](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/baseset-at.md) | 627 | `result-track:dedaed9a8b5c7187bcc57e9019fd4c0b94f1545252234e26eaf985db29842a17` |
| 48 | `theorem` | [localTriv_apply](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtriv-apply.md) | 631 | `result-track:cd907d2b26ecb570645cd4d70bec2784def0d298892705e155a13e711637500d` |
| 49 | `theorem` | [localTrivAt_apply](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivat-apply.md) | 636 | `result-track:68b56272f877b4491f6489d23f6e2b1e86dbaf301dc8ba76ba1fbdd603becf5e` |
| 50 | `theorem` | [localTrivAt_apply_mk](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtrivat-apply-mk.md) | 641 | `result-track:abfb5df50b233e5750d73794c7e5667cbe8ea0ee4ef52d29eb3e2914eb4fa95e` |
| 51 | `theorem` | [mem_localTriv_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtriv-source.md) | 645 | `result-track:7c6b7342f274b50a17dd101d670d7971e0c44e5b1b4af7cb22c6889b93b153b5` |
| 52 | `theorem` | [mem_localTrivAt_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtrivat-source.md) | 650 | `result-track:75b207c63a73b28eba2b5072e39b26cbacc184699215648beaedcd7d51cfa9a2` |
| 53 | `theorem` | [mem_localTriv_target](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtriv-target.md) | 655 | `result-track:cfb6029fb40b25222c0a381cc78243a9e352954af1b8eb27fb2f83c86b632e6a` |
| 54 | `theorem` | [mem_localTrivAt_target](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtrivat-target.md) | 660 | `result-track:c597023f21d77a5aed7cb446198588827c2b4b92d827c8a32820917cd2961431` |
| 55 | `theorem` | [localTriv_symm_apply](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/localtriv-symm-apply.md) | 665 | `result-track:44849481e410ec839329a69a73008a966aaf6e24323abe844d16fb5eb9a6b9ed` |
| 56 | `theorem` | [mem_localTrivAt_baseSet](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-localtrivat-baseset.md) | 670 | `result-track:f94fcb071190e19a8612b57f284e516dee5338c4e00954b4f295a3feb7b5197c` |
| 57 | `theorem` | [mk_mem_localTrivAt_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mk-mem-localtrivat-source.md) | 674 | `result-track:ae72c5788531871ae091c93ba6010a40270ade0cc120d3e18f76ee1321f6b938` |
| 58 | `instance` | [fiberBundle](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiberbundle-source-edition-2.md) | 678 | `declaration-track:670bddf8499f5175cf7e58b56c7a7961f73618a4cd9088d61e1fb23466b1e35f` |
| 59 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-totalspacemk-source-edition-2.md) | 695 | `result-track:ed6d24bad80fa22529154dabc7f11c92857a8c9be40f417bc2a44b373e07c5bb` |
| 60 | `theorem` | [continuous_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-proj.md) | 700 | `result-track:1f2e7c762ad28062dc3bf22f3ac42f1d11cd03ec91e3b28fb95f331e6c9895e4` |
| 61 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/isopenmap-proj.md) | 704 | `result-track:93ac7908304c95d7c2b39e0c50ce19bf3083257141f23f897add92da2ec32dac` |
| 62 | `structure` | [FiberPrebundle](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/fiberprebundle.md) | 719 | `declaration-track:eada7d4dc0942f55db92a19dad8f8c1a7073e0870b26042da9faf678f2610543` |
| 63 | `def` | [totalSpaceTopology](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspacetopology.md) | 734 | `declaration-track:75b0bfe88eab7661c71001bec4ed3b09d4e9c07c235a84098d63e459db540418` |
| 64 | `theorem` | [continuous_symm_of_mem_pretrivializationAtlas](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-symm-of-mem-pretrivializationatlas.md) | 738 | `result-track:9695619b2bb6d20cbf6fdd1fe56f0d32bf6d0ab4b8121cc2255bfe197b2fc13f` |
| 65 | `theorem` | [isOpen_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/isopen-source.md) | 743 | `result-track:ae40324cac52fd137eaa275afda68600691437130b164c015ad8c6fd84cc6bbe` |
| 66 | `theorem` | [isOpen_target_of_mem_pretrivializationAtlas_inter](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/isopen-target-of-mem-pretrivializationatlas-inter.md) | 751 | `result-track:024efaf1d7e7b297e11e8cb208e8a9625fe487c4ac773c1750056de7a5b93791` |
| 67 | `def` | [trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/trivializationofmempretrivializationatlas.md) | 761 | `declaration-track:beb7e01d9a41c62e04ff7c46b7688ebb4db3f7a8240e998150bb1f34754c7f7a` |
| 68 | `theorem` | [mem_pretrivializationAt_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/mem-pretrivializationat-source.md) | 780 | `result-track:51ee313bb8eef0451b40a5e0c35e2eb7d283ad9733e315d2b4bce108c9f19274` |
| 69 | `theorem` | [totalSpaceMk_preimage_source](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/totalspacemk-preimage-source.md) | 786 | `result-track:bbfc490e1ef0e5fe37c6d39ffe261cd56e2be39cc49ebb6763c52ecbf142a1b8` |
| 70 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-totalspacemk-source-edition-3.md) | 791 | `result-track:f977fb10749ef96cefd632cfd8c4e14bdfec8d5ace1537e7a19c642ffaeeedd8` |
| 71 | `theorem` | [inducing_totalSpaceMk_of_inducing_comp](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/inducing-totalspacemk-of-inducing-comp.md) | 799 | `result-track:79b86ac8f23dff26863237d39248419784c8560ac3955d31149ff9c7cc435aa7` |
| 72 | `def` | [toFiberBundle](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/tofiberbundle.md) | 815 | `declaration-track:62e3fa46f14be18b754aad8467c97d6389bf0d4ec25a577de889e4412e2c24a7` |
| 73 | `theorem` | [continuous_proj](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuous-proj-source-edition-2.md) | 827 | `result-track:83d126f67409b91fb595a74df32c82f68287f340da7677b62f6feab8dccb9ed2` |
| 74 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/instance.md) | 832 | `declaration-track:55e7a45e5834108d26778c82125140eb397ed852d0e6506f293f65576a727904` |
| 75 | `theorem` | [continuousOn_of_comp_right](../../../../GeneralTopology/FiberBundleBasicTotalSpaceMkIsInducing.lean/declarations/continuouson-of-comp-right.md) | 840 | `result-track:2338026eb0d62a686a7d4f509c46122227d5bd883a858fef018a39e9341e9a47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e9e1b41dc93ec8f8e280817a618f767b2fd12216cc1999a261949e61f38012d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
