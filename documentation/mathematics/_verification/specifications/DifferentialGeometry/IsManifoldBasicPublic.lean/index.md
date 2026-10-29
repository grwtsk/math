# Verification target: Is Manifold Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "680c70c7452343c30c386f7b04c79ff48cd7f3ac",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `680c70c7452343c30c386f7b04c79ff48cd7f3ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean.json)

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
| 1 | `lemma` | [Continuous.invFun](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuous-invfun.md) | 145 | `result-track:0de67f6362c29adb84e525d3b8fed8317a7f2731eca7fa1626c2c2bef75ec96d` |
| 2 | `structure` | [ModelWithCorners](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners.md) | 166 | `declaration-track:3b3a2dc234e8783bd64ce8a0c1475d34631971f8185af97eef589d62b972750e` |
| 3 | `lemma` | [ModelWithCorners.range_eq_target](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-range-eq-target.md) | 183 | `result-track:0d77d513177e35a80f9efa41e21392feeef7a0eac6a06e8f74f78bf3e2810e54` |
| 4 | `def` | [ModelWithCorners.ofTargetUniv](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-oftargetuniv.md) | 189 | `declaration-track:7ceae7656954f4d4411f5b086578acdabd1a68888762f985bde758a437068016` |
| 5 | `def` | [modelWithCornersSelf](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself.md) | 209 | `declaration-track:35d0380e1bf99911a36039e0ed8347c4d3981b73adde482603e0cd5abbd1014c` |
| 6 | `def` | [toFun'](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/tofun.md) | 228 | `declaration-track:90b259bbeb7ca86a4cdc26e6c73c6b1664ee1015e94f0c66ee8c210987c18153` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-9.md) | 230 | `declaration-track:8bed00dd2aa84c728e6d55f721d506c38be63ed34e3be090abcc1b4b916f2097` |
| 8 | `def` | [symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm.md) | 233 | `declaration-track:c250d3ccc780897cd496d01ea107d8f21944d840d28827fd954743dbacd761b6` |
| 9 | `def` | [Simps.apply](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/simps-apply.md) | 238 | `declaration-track:01ad44f8caf33bf250736159f5daf26ab78f6b13d664124a9cbd912886df280b` |
| 10 | `def` | [Simps.symm_apply](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/simps-symm-apply.md) | 243 | `declaration-track:5b75c1ca1540793011f51d9fa637d059145565be8397bce482f933d7cc564619` |
| 11 | `theorem` | [toPartialEquiv_coe](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/topartialequiv-coe.md) | 251 | `result-track:dd98c6c606ff7f1a3f9505d57147fbc1bc81f8b752fc7dd6af4303862f3ca2f3` |
| 12 | `theorem` | [mk_coe](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/mk-coe.md) | 255 | `result-track:a96fcd2b4062d38ee5bea65b57ade0031a5a02d6c0ede858c4c37d8999cd1e97` |
| 13 | `theorem` | [toPartialEquiv_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/topartialequiv-coe-symm.md) | 260 | `result-track:c30169e1ea6029249d96b7d3623e7064855e98be96bf535102d94dac768f5089` |
| 14 | `theorem` | [mk_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/mk-symm.md) | 264 | `result-track:0df95282c915ed25d2faa9570f6b6c5cb339b36e095b4108fe243dcabba2a7e6` |
| 15 | `theorem` | [continuous](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuous.md) | 269 | `result-track:b3fcd56094e353ef2db2fc8b094e71ceffd41999a8f4e3e4060a4b2c9045c995` |
| 16 | `theorem` | [continuousAt](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuousat.md) | 272 | `result-track:3b2e6514e2b2582d13c780a381299c90e63fea2c8696682913d6d3bbb848ea9f` |
| 17 | `theorem` | [continuousWithinAt](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuouswithinat.md) | 275 | `result-track:935be7ca1eb4ad234cef2c5487377a47762d38b6ec881fef0028e23e16c72e31` |
| 18 | `theorem` | [continuous_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuous-symm.md) | 279 | `result-track:b9f37e3b2c892eddbba6f29d7b324d952450e1d69c273fc89379fe30a70d665a` |
| 19 | `theorem` | [continuousAt_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuousat-symm.md) | 282 | `result-track:6e23cbc48d0b60237942b2344b7ff7382eb221ff761bfeeff2566aa2d496584b` |
| 20 | `theorem` | [continuousWithinAt_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuouswithinat-symm.md) | 285 | `result-track:98aecaa3707630c088e9ce0c54713b4a519965bc38e2bee0b5e58707f2502895` |
| 21 | `theorem` | [continuousOn_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuouson-symm.md) | 288 | `result-track:e92887e84a4b97d2451d829bbfe8f1648f56ede5c131896a368bf10ca1a6dd7b` |
| 22 | `theorem` | [target_eq](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/target-eq.md) | 292 | `result-track:da29add6179de008ea560a34f02ac9fd658b1c7d78ee0f09242348b613056c71` |
| 23 | `theorem` | [nonempty_interior](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/nonempty-interior.md) | 296 | `result-track:c616927d107adc9119a0d30125a77e907304eb54b006af65974f7f2a727445b0` |
| 24 | `theorem` | [range_eq_univ_of_not_isRCLikeNormedField](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/range-eq-univ-of-not-isrclikenormedfield.md) | 299 | `result-track:a5c6e797dab109ef7505bbb4cfa38dbb9d1faa3153dc023e1abc9adeca22a912` |
| 25 | `lemma` | [_root_.Convex.convex_isRCLikeNormedField](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/root-convex-convex-isrclikenormedfield.md) | 306 | `result-track:e294fc6d6e160a4762e19e1a5bd5b945cc89be5ff780b6b2de2b35f5a552c2a8` |
| 26 | `def` | [ofConvexRange](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/ofconvexrange.md) | 320 | `declaration-track:8d2caca1067cfc98157b14a8ac59dbe7d9fde0fd8b89e64579c206801d68d529` |
| 27 | `theorem` | [convex_range](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/convex-range.md) | 335 | `result-track:48edfe601a7180687624049881f1ef97042afabcd51383c2faa6bd4b4841a112` |
| 28 | `theorem` | [uniqueDiffOn](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/uniquediffon.md) | 349 | `result-track:e33850029b439e30196ec4e70210656a94ce9ec7dcb35075ffcdec5c7f91e02b` |
| 29 | `theorem` | [range_subset_closure_interior](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/range-subset-closure-interior.md) | 357 | `result-track:cf03d28a9b5bd0b5bdf5da840181b03772958636df243510173d0d285f1545a5` |
| 30 | `theorem` | [left_inv](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/left-inv.md) | 368 | `result-track:0e3a6bbb92ba6861acd49feebda9765f67cf185a2ab76ba23c4ed97ffe77ce14` |
| 31 | `theorem` | [leftInverse](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/leftinverse.md) | 370 | `result-track:f9f9a70b9123ea53216c1f1a26ceb0a6cbd4d99ca900a914eccbf44aaecd16b7` |
| 32 | `theorem` | [injective](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/injective.md) | 373 | `result-track:7da412c6a59fd5f9d1e80955ff9f50591dde343fa7c30477894dbb168146ba2d` |
| 33 | `theorem` | [symm_comp_self](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm-comp-self.md) | 377 | `result-track:1a67147f4194e200deab9868d3c00643487d735be30695febcbfd60d26b6f8ba` |
| 34 | `theorem` | [rightInvOn](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/rightinvon.md) | 380 | `result-track:9f53a7c20778f741e3336d751dcddc5e39b84a1fc26b64bb9bae46601b001150` |
| 35 | `theorem` | [right_inv](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/right-inv.md) | 384 | `result-track:a08b36ba7931593788ca3a702a2d5668e6e6990b76fb7d8f54c3755b76735e93` |
| 36 | `theorem` | [preimage_image](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/preimage-image.md) | 387 | `result-track:19be5999f1b073c87ce060566b7745834f735810179c3d2a35c789db3a7fb46a` |
| 37 | `theorem` | [image_eq](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/image-eq.md) | 390 | `result-track:e660c9676bc29c076be3aa1340ee8306504e60095389230ec1e228aca338bd52` |
| 38 | `theorem` | [isClosedEmbedding](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/isclosedembedding.md) | 395 | `result-track:fdc02ba0c9b57ab6c697ecee69cccffd1b6275532f95cc608b7fb94c13628bf4` |
| 39 | `theorem` | [isClosed_range](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/isclosed-range.md) | 398 | `result-track:9ed18165fb95e5f479c922487af1847edb56641870018a7c680946a9f06f2810` |
| 40 | `theorem` | [range_eq_closure_interior](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/range-eq-closure-interior.md) | 402 | `result-track:2ba938510462586eae24191a28a11b1aa54102fbc85bf47f0f716588c1f03b71` |
| 41 | `theorem` | [map_nhds_eq](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/map-nhds-eq.md) | 405 | `result-track:146da2f535268f5be62942287001775059bf907a4a7e76b941c2a41d9344941f` |
| 42 | `theorem` | [map_nhdsWithin_eq](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/map-nhdswithin-eq.md) | 408 | `result-track:19b3f81e2f7904cedb5ed89d6b0c84fa6d9b4bb64caa59661eba9db617a6f94f` |
| 43 | `theorem` | [image_mem_nhdsWithin](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/image-mem-nhdswithin.md) | 411 | `result-track:952d022d273d316c73e140374eddd3eb3b6e47d2f8fe68d836a745a83cb6b029` |
| 44 | `theorem` | [symm_map_nhdsWithin_image](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm-map-nhdswithin-image.md) | 414 | `result-track:f7dac03c3586e48cf3516c94c717ff28f81e93c52f905d38bd0f40faac15226b` |
| 45 | `theorem` | [symm_map_nhdsWithin_range](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm-map-nhdswithin-range.md) | 417 | `result-track:5b5555fc657311ba453e315504ea0afcc9951fecc516035fc32dc37e4e786ff4` |
| 46 | `theorem` | [uniqueDiffOn_preimage](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/uniquediffon-preimage.md) | 420 | `result-track:3c4d053263822b8982e6e946fb96d7d90b0bf1932dc4160878ec1a642aba1e8a` |
| 47 | `theorem` | [uniqueDiffOn_preimage_source](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/uniquediffon-preimage-source.md) | 425 | `result-track:6c4334655cb781e8246c71f0dfe3c1d2ad1a2ae2dfe1c091d99e7df57f4e4119` |
| 48 | `theorem` | [uniqueDiffWithinAt_image](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/uniquediffwithinat-image.md) | 429 | `result-track:de1bc4d7ae74c85becb19025c08ed4c2cecb3b62aa8a925ae1acc94cdfe13694` |
| 49 | `theorem` | [symm_continuousWithinAt_comp_right_iff](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm-continuouswithinat-comp-right-iff.md) | 432 | `result-track:7b950ffb686d1678c88a5c61d8567daebc5b672a3a30752f27b61c5a1519ad79` |
| 50 | `theorem` | [locallyCompactSpace](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/locallycompactspace.md) | 442 | `result-track:cf68a55d12f30882b572c616346eb898bd7783ade982ebf39d9cdca86e14ca66` |
| 51 | `theorem` | [secondCountableTopology](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/secondcountabletopology.md) | 454 | `result-track:5aed7714330500ca6487064f59074a9ae94cfe207f646f3be1a0903966ff61b2` |
| 52 | `theorem` | [t1Space](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/t1space.md) | 461 | `result-track:e9d2d08df94f97b316a8dd0c55581e20afc78ab748438863c3baf1c37433e249` |
| 53 | `theorem` | [modelWithCornersSelf_partialEquiv](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself-partialequiv.md) | 473 | `result-track:da45e2f64d9c4aea7f542045949f467a2be6cbfed73b94b734d7ddae414e8830` |
| 54 | `theorem` | [modelWithCornersSelf_coe](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself-coe.md) | 477 | `result-track:27bf8d0407a710b7993651b589fa174a65097a22ae6235e6e4001d2a5577c3a8` |
| 55 | `theorem` | [modelWithCornersSelf_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself-coe-symm.md) | 481 | `result-track:06e4c767ef89252017681db489c1123887490f71cc56dd96d869ae1d7d986c98` |
| 56 | `def` | [ModelWithCorners.prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-prod.md) | 496 | `declaration-track:7fee272a571214f35c699b404d6038e2371fff972c32de4620bc9507e7c541f0` |
| 57 | `def` | [ModelWithCorners.pi](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-pi.md) | 523 | `declaration-track:ce5f6ec5e647b01339fe5aca5f497c4b35b782e75b3e28188d2b6a571721e0ce` |
| 58 | `abbrev` | [ModelWithCorners.tangent](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-tangent.md) | 544 | `declaration-track:6feefd67472f6622d9f97a769568d44eb4b2077cd597335ffd196a10d37107fc` |
| 59 | `theorem` | [modelWithCorners_prod_toPartialEquiv](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-prod-topartialequiv.md) | 557 | `result-track:03b8fff68af484cda56d2571555328804f2c6fc9925e3ad1bdc7ae859f3477e0` |
| 60 | `theorem` | [modelWithCorners_prod_coe](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-prod-coe.md) | 562 | `result-track:b62ae35a517e2df109aeb2fbf0c165bcdaa2733e08a4bf0e21d3dbffc18622b1` |
| 61 | `theorem` | [modelWithCorners_prod_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-prod-coe-symm.md) | 567 | `result-track:d9d83312e1f3148ff78a5f655fd037d60b5c65ec595d54be674ca71ed7863c19` |
| 62 | `theorem` | [modelWithCornersSelf_prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself-prod.md) | 575 | `result-track:a0f5912e0fc0a55abe6a6b65a5a62c2f3bebbd9d44bce7fb03ad44e78b90937e` |
| 63 | `theorem` | [ModelWithCorners.range_prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-range-prod.md) | 577 | `result-track:00b11ebf7c1a2f89ff8f2cfe0b104ce177a6c85b28d44cdccfef03a0b5fcf3ac` |
| 64 | `class` | [ModelWithCorners.Boundaryless](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-boundaryless.md) | 587 | `declaration-track:89a8afc63cff03652a8aebd08d57395221ab0ec7854603718c95757498efa52c` |
| 65 | `theorem` | [ModelWithCorners.range_eq_univ](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-range-eq-univ.md) | 592 | `result-track:202aad4bb25d490be67420b5ae2d15cfd3361d82adc155b9919f0823da9691fa` |
| 66 | `def` | [ModelWithCorners.toHomeomorph](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-tohomeomorph.md) | 599 | `declaration-track:18a0ed91f7fd7faf8d8e542559a944ff1206092347ac3370344ab62e967e9282` |
| 67 | `instance` | [modelWithCornersSelf_boundaryless](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcornersself-boundaryless.md) | 607 | `declaration-track:c6fe7f4190f6646d89bc9082c73a83054502455e708b5e064681fcb326b6ff10` |
| 68 | `instance` | [ModelWithCorners.range_eq_univ_prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/modelwithcorners-range-eq-univ-prod.md) | 612 | `declaration-track:806a553b07e311c237dcbea698a243f78f6b4e40e081538d6812642d81b1ce64` |
| 69 | `def` | [contDiffPregroupoid](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffpregroupoid.md) | 636 | `declaration-track:0345fd7399c18ad5281abe909c887a472bfabdb8fc23f080a98df0b89c11b65a` |
| 70 | `def` | [contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffgroupoid.md) | 675 | `declaration-track:a35ed84e650d9b2519a1eb93282a65f3dfc602ca7ddc5ac71f02d3f8fa1fe3c2` |
| 71 | `theorem` | [contDiffGroupoid_le](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffgroupoid-le.md) | 680 | `result-track:588a2c04dcc7d0362d792ec4527876a1cb0f8ae40d1cd44a17e52dfe686b3170` |
| 72 | `theorem` | [contDiffGroupoid_zero_eq](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffgroupoid-zero-eq.md) | 688 | `result-track:b9bc5ab2350250ec99f5dcfbd739775528b6961d572bdfbd6d4ecbc8792e6a8a` |
| 73 | `lemma` | [ContDiffGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffgroupoid-mem-of-source-eq-empty.md) | 705 | `result-track:6bc77acc462cfe9701aab9fd75d4820cc71de76be2515acacb7d3aee0bc163c2` |
| 74 | `lemma` | [ContinuousGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/continuousgroupoid-mem-of-source-eq-empty.md) | 717 | `result-track:5b05667dc854911b80cfe2c18b5da04d45c2979249488045b43400b1f8016bd9` |
| 75 | `theorem` | [ofSet_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/ofset-mem-contdiffgroupoid.md) | 723 | `result-track:543f343f834842a1197282c7adc722b66817cf2a22317ddd165b64a4c3d9d3e1` |
| 76 | `theorem` | [symm_trans_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/symm-trans-mem-contdiffgroupoid.md) | 733 | `result-track:2aa97995da1a67022c347c95c9340d7497a4161930b1d15cb1c23d979c046fe5` |
| 77 | `theorem` | [contDiffGroupoid_prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/contdiffgroupoid-prod.md) | 742 | `result-track:c20d0c8bdbacda654e4ed6f18057ddcd3bf179bd84d020a035deede53fa609b1` |
| 78 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-6.md) | 760 | `declaration-track:49994006fd60e64031e3b7fe865eb7f5828868876ab0eae815e05f024d6f9358` |
| 79 | `class` | [IsManifold](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/ismanifold.md) | 779 | `declaration-track:1e093388404cdde2d144a417b07113c370e40c8b2783eed32a81754f1687a921` |
| 80 | `theorem` | [IsManifold.mk'](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/ismanifold-mk.md) | 786 | `result-track:ac4a572c017cb48397253e4f4961c658b7b85df816437a93b49e5f954df8e669` |
| 81 | `theorem` | [isManifold_of_contDiffOn](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/ismanifold-of-contdiffon.md) | 793 | `result-track:07232e769117cd3a4d5509e8519f8459276476d16bb34179134eaca5e4b78757` |
| 82 | `instance` | [instIsManifoldModelSpace](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instismanifoldmodelspace.md) | 805 | `declaration-track:02b668f8d2ba65eda4dcb055951d032e5a543d64a8f24735218e04a168f1c8dd` |
| 83 | `theorem` | [of_le](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/of-le.md) | 821 | `result-track:622934acbd7f837072f4343e07199ddfb438237d9394f52848f83c968a1557c7` |
| 84 | `class` | [_root_.ENat.LEInfty](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/root-enat-leinfty.md) | 830 | `declaration-track:2788d984fe5c6ecb86affb21dccea9620ceaa4b5c3a4a0a1c588b275001a8b46` |
| 85 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance.md) | 835 | `declaration-track:00c0c42bad47388ab9622785d73b172ec7681dfe0318d71f5dd14d6fea0dec3e` |
| 86 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-5.md) | 837 | `declaration-track:432d30fa8e19cb587ff7faa5b59beeaf70ca142ddf52149f7ac4fbe0ff5f9cab` |
| 87 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-10.md) | 839 | `declaration-track:9b2e67bfa857f58881696e16fca35ca6e60e1b891c47ee57ed55d84b2fbd50bd` |
| 88 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-13.md) | 842 | `declaration-track:dd1d12d310f17646905fbaf3f9bc2962e9dcd93a8e9fbc42355caf036b7d3083` |
| 89 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-2.md) | 844 | `declaration-track:0112068318b5e57a590fa7b36c460d0a07ce3079027764664ae406cb22f8cfd9` |
| 90 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-15.md) | 846 | `declaration-track:ebe36296001f30c8e7988ec06fe66cdcf7d390efcbd85abdb78dc5ee16a7841d` |
| 91 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-12.md) | 850 | `declaration-track:d6140d2ff10d8f7b2505b6eeff5855781457c5c37098798324913879f1581ba7` |
| 92 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-3.md) | 854 | `declaration-track:0acc65b3ec99c22e7d92ef2b5aa63c77841aea6bdda2f3cda18ceecdef835621` |
| 93 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-11.md) | 861 | `declaration-track:ab43c18104de823ea66cea5cf6324f02407523bcbabd4ea2678d37fc219a2e39` |
| 94 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-4.md) | 865 | `declaration-track:41685aa72e715ae8171bab708a2a545221ca8b936ecb3d40f4bd16220e2ff02f` |
| 95 | `def` | [maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/maximalatlas.md) | 870 | `declaration-track:b127b092f4a481ee9d7b0e7d32b150cc2b72b0164393cdeba7354f2062c2a58b` |
| 96 | `lemma` | [mem_maximalAtlas_iff](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/mem-maximalatlas-iff.md) | 873 | `result-track:1d8e3aef229baf77eb2e9df70fed2348b6913ba8aba93ba013256d1c11a8cacf` |
| 97 | `theorem` | [subset_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/subset-maximalatlas.md) | 877 | `result-track:64ea3b5d5c368452b0f7b3d65bd657a4d6adc45faecdd88d95acfa3bff0124c5` |
| 98 | `theorem` | [chart_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/chart-mem-maximalatlas.md) | 880 | `result-track:989e4f1a1ce502676de2a039f2896720db3ae6f81d96eb866687c56171dac3e4` |
| 99 | `theorem` | [compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/compatible-of-mem-maximalatlas.md) | 884 | `result-track:e2a7dad15c9cc1f486bc51d0144f073256921788e97386a73bdbef52671f3fb0` |
| 100 | `lemma` | [maximalAtlas_subset_of_le](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/maximalatlas-subset-of-le.md) | 889 | `result-track:43c6b5e7f1b436e2abd831d0765e91f7cd2cc4de061fee532e964e3e433d1e7f` |
| 101 | `instance` | [empty](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/empty.md) | 895 | `declaration-track:5e02323471e880c870fb9977049d020a42830c6a0407a22d7f207c78b5a638c9` |
| 102 | `theorem` | [of_discreteTopology](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/of-discretetopology.md) | 915 | `result-track:5fc39b3b4a3743cdf3fc86c7af5befaf9a82bfc31358cf13524daf0b27013bf3` |
| 103 | `example` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/example.md) | 920 | `declaration-track:e7d37526dae1a5cf28745a99af9e31048b2ee7f007b3631ce7bcb2113101b419` |
| 104 | `instance` | [prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/prod.md) | 923 | `declaration-track:d34b2eef9c985800502ad776a47637b1397720a9514169e5156e6f132c9433f9` |
| 105 | `lemma` | [mem_maximalAtlas_prod](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/mem-maximalatlas-prod.md) | 943 | `result-track:35a1730a1a8b2e413568d21381eab286b02243a5dff0bd30a5e15533ea0eda2f` |
| 106 | `instance` | [disjointUnion](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/disjointunion.md) | 963 | `declaration-track:13980c9f650efab3945feb8246879852ba4535400bd92a78f6c0fd1cf83bf541` |
| 107 | `theorem` | [OpenPartialHomeomorph.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/openpartialhomeomorph-ismanifold-singleton.md) | 988 | `result-track:dd9408b0f9e1a3229c9d042c647a089a084ffb93fb203373db8b915197bd6082` |
| 108 | `theorem` | [Topology.IsOpenEmbedding.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/topology-isopenembedding-ismanifold-singleton.md) | 997 | `result-track:d6ac3281e76f982a0d0e7740efc617e1078772397e49617c75e060745bb1d764` |
| 109 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-8.md) | 1014 | `declaration-track:7efb62990f794ceeddc370f732d04386e9f49e201a10dfb4f83c970bbcbbddaa` |
| 110 | `def` | [TangentSpace](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/tangentspace.md) | 1035 | `declaration-track:3b26cf28b13a6fd771bb6608a821c07bcd5e764b74eecb3c4c517bb815fb01d6` |
| 111 | `def` | [tangentSpaceCastModel](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/tangentspacecastmodel.md) | 1056 | `declaration-track:61e6d1d226d4876fa5f9f80be7c8707ddc2af25256ab3e9d3b5b3e96454cf333` |
| 112 | `def` | [NormedSpace.fromTangentSpace](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/normedspace-fromtangentspace.md) | 1065 | `declaration-track:5f2d7098b8a4ee2b225c0e5c7d6ae2b728c5c44f5e403414fd303aeee9d4305e` |
| 113 | `def` | [tangentSpaceCast](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/tangentspacecast.md) | 1070 | `declaration-track:1f0ac058c733047b07435bb06c74115f933671ac64e36fbadf721489ac2c14e0` |
| 114 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-14.md) | 1076 | `declaration-track:eb63d431ad4ca0e4e31b3061b3793fb0aaf0d5f25786835608d7d5e01dc63646` |
| 115 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/instance-source-edition-7.md) | 1078 | `declaration-track:4fa660d4be0f39c2e230de3abf48ba0dcd3cc2cf9a541d3f1e3ea779db652be6` |
| 116 | `abbrev` | [TangentBundle](../../../../DifferentialGeometry/IsManifoldBasicPublic.lean/declarations/tangentbundle.md) | 1085 | `declaration-track:90cfe3f2b0ea5b5c72c689e6aa2efd3d536b2641234b7467a6684280ad40d635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c66ee004b461f6af77f1788c18eca69fdc6eaced9e8ab43c3789e580a2fcbfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantb4eefdd19a4e3e6c50a368c7c08f02212e6c989272809657df29dfed1c3f8009.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
