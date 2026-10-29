# Verification target: Charted Space Namespaced Mem Pregroupoid Of Eq On Source Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91624ebdd0ed1f3a60f24e3887b77235ae23ecb9",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/index.md) · [Full source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91624ebdd0ed1f3a60f24e3887b77235ae23ecb9`.

Source path: `GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Align` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalHomeomorph` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StructureGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid.md) | 174 | `declaration-track:327bfe58bd572828d2f52b0b3cbc39290bcda0fe194e618f86228ba7d0982043` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance.md) | 186 | `declaration-track:25808ad45648b6d52b9ae18698dee33ee48b0be8d88e05eb5462044bc1f0cfbc` |
| 3 | `theorem` | [StructureGroupoid.trans](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-trans.md) | 189 | `result-track:1abdd891d1c9705e14b1efd53c6ee7069603744da2fbe61c1a0de1dc45b962d1` |
| 4 | `theorem` | [StructureGroupoid.symm](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-symm.md) | 194 | `result-track:9b05d8a74b50a3f74488b8ae1b380dbf51b1c665a2324f213e5f33933a23e103` |
| 5 | `theorem` | [StructureGroupoid.id_mem](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-id-mem.md) | 199 | `result-track:981679cdab35e26023a2fe5eed09d77abeeede5bb1e11674e7b0a1dde2be995e` |
| 6 | `theorem` | [StructureGroupoid.locality](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-locality.md) | 203 | `result-track:099941b3e3746719ae9ab4d7d77f7d71b6f5f3e35835736ad411f169aae08a59` |
| 7 | `theorem` | [StructureGroupoid.eq_on_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-eq-on-source.md) | 208 | `result-track:b90008a218c0da015b876c8015d02d604ea46d4e07574ecde56356aabdd0c605` |
| 8 | `instance` | [StructureGroupoid.partialOrder](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-partialorder.md) | 214 | `declaration-track:0c32349fd81115905fc2d3883ca7e29cf05e5f206373ff1df3cb02816ef8bd83` |
| 9 | `theorem` | [StructureGroupoid.le_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-le-iff.md) | 223 | `result-track:4ec85887a17700b4c615987e4bea3298f3445ec8934710e4a57bfd85f97d57c5` |
| 10 | `def` | [idGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/idgroupoid.md) | 229 | `declaration-track:51ee9051d81bfd6f7e6fde7195493eca6bd1334c50d1ebb755ced6edb681e32d` |
| 11 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-8.md) | 282 | `declaration-track:d5ca648420793ef53c827ab89e0315637a58148b5bc67340ce2fb06362cf6bfa` |
| 12 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-3.md) | 296 | `declaration-track:48ad0120940f2a7824f37d3f9513b2d4fef192727d8ba2fe0179f374e174b53a` |
| 13 | `structure` | [Pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/pregroupoid.md) | 303 | `declaration-track:31c178dbd66241a63d12971f9087ace6f642318e3a8cd88cb94a43575df148a7` |
| 14 | `def` | [Pregroupoid.groupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/pregroupoid-groupoid.md) | 315 | `declaration-track:fd72e2d3c10fefa815c6b882fe0fb425b2eab2f3d53e2903c03bbfcb0d03c4ad` |
| 15 | `theorem` | [mem_groupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-groupoid-of-pregroupoid.md) | 355 | `result-track:276850505a8fd7c76b235da31fc5b04b1c3d912d8b9b4d03b75b0440d68b39d4` |
| 16 | `theorem` | [groupoid_of_pregroupoid_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/groupoid-of-pregroupoid-le.md) | 360 | `result-track:8640fd42080014bcc6674eea1086d09d50ba50ef350568a927f4054dc92cf613` |
| 17 | `theorem` | [mem_pregroupoid_of_eq_on_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-pregroupoid-of-eq-on-source.md) | 367 | `result-track:75c1474849c81aac5e4805d536382b94e19bb86e138aa6976a2a39987f1b173f` |
| 18 | `def` | [continuousPregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/continuouspregroupoid.md) | 375 | `declaration-track:918f888ecd6d26e8b38bccc63e9158e120b50a8d493cf9764cf4f1064543e480` |
| 19 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-6.md) | 383 | `declaration-track:a6c674f9ee4499eaf5e97ef6bc6191deca6123cdd9ac18638341aec752560ee4` |
| 20 | `def` | [continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/continuousgroupoid.md) | 387 | `declaration-track:32e7ca5c33d451dc8edae2c3ab03002a8bfa30d0db074c75e98b80cb45ebf96d` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-4.md) | 392 | `declaration-track:4b867b51bba8ef6a9326eabec643b6c453892b7d8983bc76bc8d6d025eaee52a` |
| 22 | `class` | [ClosedUnderRestriction](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-source-edition-2.md) | 398 | `declaration-track:ee8972f6e32b1ebda35add8b661a734a56b0e54ab8d7a39b93c5c6bab7e4239c` |
| 23 | `theorem` | [closedUnderRestriction'](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction.md) | 403 | `result-track:d4de7189a705da2e5c784f414232d333717d29f24b9548afaccf2c2816e75215` |
| 24 | `def` | [idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/idrestrgroupoid.md) | 410 | `declaration-track:289b2e3c9f0b74ba4b39ccd4c4d587e903d50476f71bf5d06bf6483e0e20d336` |
| 25 | `theorem` | [idRestrGroupoid_mem](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/idrestrgroupoid-mem.md) | 439 | `result-track:f33eea0ce345b70778022ca13fa8df742d07f6dfc52a63ae13b231e60c31b195` |
| 26 | `instance` | [closedUnderRestriction_idRestrGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-idrestrgroupoid.md) | 444 | `declaration-track:32481e35c9ad7d0b9b552c89b611b5f9341c4e71a6849edcd55c105de39137e0` |
| 27 | `theorem` | [closedUnderRestriction_iff_id_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/closedunderrestriction-iff-id-le.md) | 454 | `result-track:fee83d604d2c65e98e537395b2df08d4c925c14133daabbe6642fc5fcbec996a` |
| 28 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-5.md) | 481 | `declaration-track:7d0b7aea4947f076189c040986c79f9fd67334bd0baf9977cc417a0ff328cb33` |
| 29 | `class` | [ChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace.md) | 499 | `declaration-track:99416b84c64ea546b2b071fc39b41c8b5b45775c66fb220ba1280cc82c5878ae` |
| 30 | `abbrev` | [atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/atlas.md) | 506 | `declaration-track:d5cae4e4576f0d18a098287cec8fb11624dc8c052560eaa1a8bca077ee2d5f6c` |
| 31 | `abbrev` | [chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat.md) | 510 | `declaration-track:6165df3f04bfcf20c523bcd9e8972e8b4a18c51df398e0e7ea1d34fdfda54c29` |
| 32 | `lemma` | [mem_chart_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-chart-source.md) | 515 | `result-track:03d91fa7963dc3845e63408659bc996479511a9aeee950489f3602b85733c0d0` |
| 33 | `lemma` | [chart_mem_atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-mem-atlas.md) | 520 | `result-track:75585cb68e6e8dda967dc1c2ccbf1c726f3dd8d71ce2fcef1c46050d48e7ccda` |
| 34 | `instance` | [chartedSpaceSelf](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself.md) | 527 | `declaration-track:92a216dadb04584c9368510c4b8ff5170d119f628a5aca1cfd0ffe6ee1a7e5e7` |
| 35 | `theorem` | [chartedSpaceSelf_atlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself-atlas.md) | 537 | `result-track:31351fb4b2c30a7b0eabee7135c61ffde735eadd69fc6740e2d286c3c12e5f7d` |
| 36 | `theorem` | [chartAt_self_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-self-eq.md) | 543 | `result-track:f1a8762ce929efa67714ce31ca8a851122e9609668ed2d7310e91156aa2edfa5` |
| 37 | `theorem` | [mem_chart_target](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-chart-target.md) | 552 | `result-track:354c67df4770271596273e1c55c252cc79fb7e30acf1dceb765445b5af040224` |
| 38 | `theorem` | [chart_source_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-source-mem-nhds.md) | 556 | `result-track:8a50d56e8e998fbc3bc473988758d04c75082fb450251f50d0283320a552727f` |
| 39 | `theorem` | [chart_target_mem_nhds](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chart-target-mem-nhds.md) | 560 | `result-track:f628404a4e35485c0a4511c7c9aed495713234c1b678184cbdc617bb272566cc` |
| 40 | `def` | [achart](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart.md) | 566 | `declaration-track:2f7007a15523bc9f7217b33d19086c101e5095eceadf0160583681a430c4002d` |
| 41 | `theorem` | [achart_def](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart-def.md) | 570 | `result-track:1f8ab017b15e25d2bf343bb45749d4dbd15e4d888aaf75496462bc7f8cc1a6ed` |
| 42 | `theorem` | [coe_achart](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/coe-achart.md) | 575 | `result-track:5b79b12c2525f7c02e8de9c5992d77029e2f422d6f906bc66d0dc4b50a1d6e95` |
| 43 | `theorem` | [achart_val](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/achart-val.md) | 580 | `result-track:3e852364c0f49db61bced7089318ed4faf17ecfdbe8b53fb04bf8577c4e5d556` |
| 44 | `theorem` | [mem_achart_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-achart-source.md) | 584 | `result-track:57c11bc31230d0eedfde144099081d82d39c3daa64db03f1a795eb2eb4666448` |
| 45 | `theorem` | [ChartedSpace.secondCountable_of_countable_cover](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-secondcountable-of-countable-cover.md) | 590 | `result-track:bf5de117ce86d6ccf0a60b63f0fe1d369f0435fdc4b0e4a861a7628635833243` |
| 46 | `theorem` | [ChartedSpace.secondCountable_of_sigma_compact](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-secondcountable-of-sigma-compact.md) | 602 | `result-track:06e5222ed8dec66cfcce06a70bdfa75f682a00d299afdc092a3967ed2678284e` |
| 47 | `theorem` | [ChartedSpace.locallyCompactSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-locallycompactspace.md) | 611 | `result-track:fbd57e4db444753f6babde2713173e6d6975d086cee9d44225d4a88c56107894` |
| 48 | `theorem` | [ChartedSpace.locallyConnectedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-locallyconnectedspace.md) | 625 | `result-track:745d3689a79b79b24f7c41ba3cc8fda23d67d6423f6ad1ae3ff56fd1b65314f4` |
| 49 | `def` | [ChartedSpace.comp](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspace-comp.md) | 639 | `declaration-track:8389ca64112cbd501cc9400819767acc0e1aef99b5bde704e67e139ff482b993` |
| 50 | `theorem` | [chartAt_comp](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-comp.md) | 648 | `result-track:fe0d55bb211806c388ecc3982f008a9a92e94aab451050a996cf22b0c6ddea05` |
| 51 | `def` | [ModelProd](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod.md) | 673 | `declaration-track:c6dfac0f9227340d3eb1a9ee333f2117e87fb829bcc2a59065d7c63926c9ee0c` |
| 52 | `def` | [ModelPi](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelpi.md) | 679 | `declaration-track:088ae4d71b2f9d837b8616d0ee20deae326e870cd50dd8db015ee1262e9a1ddb` |
| 53 | `instance` | [modelProdInhabited](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprodinhabited.md) | 687 | `declaration-track:6af828cf21e1ce0edc4805e7e41692e904d7e2f7753e66f8bc8466ae0a77a2c1` |
| 54 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-7.md) | 691 | `declaration-track:ae3f4431c915e79137cd5a706ee28335431231dd434685cbdade7b674fe0f463` |
| 55 | `theorem` | [modelProd_range_prod_id](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod-range-prod-id.md) | 698 | `result-track:80f1892a14d7c8d7b56c051b18f5b11c6486f1d7b6aa45d3425b6a55de524051` |
| 56 | `instance` | [modelPiInhabited](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelpiinhabited.md) | 711 | `declaration-track:63343472cb3f142d5120aea7ce366ae625f88e72bc5b7437dde867dc8dbc055b` |
| 57 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instance-source-edition-2.md) | 715 | `declaration-track:3c7ca281a672629ee763a7b50c3c917d96cd292c6952e4b60c41342332e69ccb` |
| 58 | `instance` | [prodChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/prodchartedspace.md) | 722 | `declaration-track:e27d663617ad7f27cd6715027360535bc93bce85ab05de8be2c40b50237b938e` |
| 59 | `theorem` | [ModelProd.ext](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/modelprod-ext.md) | 734 | `result-track:295ba74106e747049aa0271b6892e06bb1f5b197d9fa9633b71e27343d48ef1b` |
| 60 | `theorem` | [prodChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/prodchartedspace-chartat.md) | 741 | `result-track:d9841ffe91c11b6668badb87cf96f63b1c810bc82afeaf70d715511e22eb3f5b` |
| 61 | `theorem` | [chartedSpaceSelf_prod](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspaceself-prod.md) | 746 | `result-track:3180a171b81f1d321679dcc43f82bddd06c9e8257cb56ea75daa991114a8968c` |
| 62 | `instance` | [piChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/pichartedspace.md) | 758 | `declaration-track:f95662eafdc9580611ceef367253e2c93932b29c4b0f20894f2f673953801692` |
| 63 | `theorem` | [piChartedSpace_chartAt](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/pichartedspace-chartat.md) | 768 | `result-track:a4c1a800521d2a2fda71f05ec6de4d679ebebf679c4629e1f7bf3e0139451ad0` |
| 64 | `structure` | [ChartedSpaceCore](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartedspacecore.md) | 785 | `declaration-track:ec674bc8a602fe8726b20c0263ae41d7d21d02e68c77998dbc1750bbe51c510b` |
| 65 | `def` | [toTopologicalSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/totopologicalspace.md) | 800 | `declaration-track:7255842f824bc1ff9a3499d02bd6cd2149307d7201ac6b9e9c1dea36850d50e3` |
| 66 | `theorem` | [open_source'](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/open-source.md) | 806 | `result-track:1819e9106c98755024957c289f24412dd2122d6d0f7b79a9e4e4ad8691860bd0` |
| 67 | `theorem` | [open_target](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/open-target.md) | 813 | `result-track:0aa40dae62b537045ada971204f53522616b9c47e99ca120982db85f6308c903` |
| 68 | `def` | [localHomeomorph](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/localhomeomorph.md) | 823 | `declaration-track:c13302d6403c43a71ddd61a33a60f7f6e394e16e69e65c5a2b3e24924d347649` |
| 69 | `def` | [toChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/tochartedspace.md) | 857 | `declaration-track:0af1bec8df29bab9512b941ca3e6b91481fa9bb223b69fd8eeda7cd71beba9f7` |
| 70 | `class` | [HasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid.md) | 878 | `declaration-track:21de9b9d6f29af74250d4e6d6f563c0a62895fae953577789f34d12a5b43124f` |
| 71 | `theorem` | [StructureGroupoid.compatible](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-compatible.md) | 886 | `result-track:ebaa560d6d4f3b1361895af56a53e10ed1aed349f419c1a9cacb30394ead3a3d` |
| 72 | `theorem` | [hasGroupoid_of_le](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-of-le.md) | 892 | `result-track:3dba2fa26edfd4e28e4b264b743557002253d5ad6c9fff24be19e0f97dc44d1e` |
| 73 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-of-pregroupoid.md) | 897 | `result-track:2059078070d6ebf38a46daea1300efa9ada76d07d4e26bf4e3ca4146ac4b0ebe` |
| 74 | `instance` | [hasGroupoid_model_space](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-model-space.md) | 904 | `declaration-track:ad7a55c62cf1b31ad2d5701f7b4e923109b507788911499506d5196a56b4e428` |
| 75 | `instance` | [hasGroupoid_continuousGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/hasgroupoid-continuousgroupoid.md) | 912 | `declaration-track:1897c5599bdab0719403edf528b92ab601f053acb84fdf5ce791b1a3ee21b232` |
| 76 | `def` | [StructureGroupoid.maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-maximalatlas.md) | 925 | `declaration-track:4cfd77fa3d7ba1207e2c502bc595db93129b63f020ae162c8fbdd7a753971658` |
| 77 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-subset-maximalatlas.md) | 932 | `result-track:7542ed0ff25b6f9bd8a873be1670680e2ab88d60aee9db98bb6cab97d60cf03d` |
| 78 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-chart-mem-maximalatlas.md) | 936 | `result-track:aa8528c9f66bbb495e70e81e5eaaed395984d676e6ab0177289ab6971ab95eeb` |
| 79 | `theorem` | [mem_maximalAtlas_iff](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/mem-maximalatlas-iff.md) | 943 | `result-track:4c53a64aaa4998e8ae2f63c808a63e13fae1cb0abcff2a95fc8128805cdcc2ed` |
| 80 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas.md) | 950 | `result-track:66362ab9541914069bf69d916af7564150dcd2c942b48569c4f29a75b23657d1` |
| 81 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-id-mem-maximalatlas.md) | 977 | `result-track:7c4357f7b53188761e097a49831b88ac6f05bce9f7d62d27a068a68acaf7bf31` |
| 82 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid.md) | 982 | `result-track:ddd8299a086548a4669c9964ede1a9a3331042a47cbe47de573b8e7b417ffe19` |
| 83 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace.md) | 1002 | `declaration-track:a483d13feb391311e632bc8eca2892b45816e09978c239c573f5249ff35a1cea` |
| 84 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-eq.md) | 1010 | `result-track:7e92716696acc55daa579c9a7e00eda570dfd979354fd360443b1a92ae4f5a49` |
| 85 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-source.md) | 1015 | `result-track:f698e01ff67b681c518e3bd45476fdf22b4dd642de5292dd87a95f9ea9310dbd` |
| 86 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-mem-atlas-eq.md) | 1020 | `result-track:bb86828226846b6ddd7e01d7e73bad5f93280e449b3ceb6324b49c84c9731fd9` |
| 87 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singleton-hasgroupoid-source-edition-2.md) | 1028 | `result-track:e086e8ac212adbf06602432e3355de4746744a512a9f06085bd88dd9da7f9131` |
| 88 | `def` | [singletonChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-source-edition-2.md) | 1048 | `declaration-track:ef5fef530427fd9f2d4377d84e4c1e42aa37c1e21777343d7235646b09a34fe6` |
| 89 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singletonchartedspace-chartat-eq-source-edition-2.md) | 1052 | `result-track:9843d3540ce24e0d2c1887ba530e81616d685eb29153fa71bdc70ad2ead93512` |
| 90 | `theorem` | [singleton_hasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/singleton-hasgroupoid.md) | 1057 | `result-track:05495689188d64c2e1ec51c14e476779ed7741d1963da3ace84dc7a4b86f1567` |
| 91 | `instance` | [instChartedSpace](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/instchartedspace.md) | 1075 | `declaration-track:f146ccc1be0f928ae6e775e31e3814467c80b73bf19d7a6a26516d26d5abf6aa` |
| 92 | `instance` | [instHasGroupoid](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/insthasgroupoid.md) | 1086 | `declaration-track:a60e247d5f90ece1298a5f289f3e8ec837413b9deb9a7b59c1fab78b07a086d8` |
| 93 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/chartat-inclusion-symm-eventuallyeq.md) | 1100 | `result-track:b5ba92f3f2e71a035594881f04ce0f2fb203ec3d0a3d9b4469ecfca2acf1cf79` |
| 94 | `structure` | [Structomorph](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph.md) | 1122 | `declaration-track:d946bf14f315c6bb01d770ffb327d6762c488bde64dc543666631447712aaed0` |
| 95 | `def` | [Structomorph.refl](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-refl.md) | 1132 | `declaration-track:f56e82100593ad0b1282e70a0a6431b216c8182e600afc0b767a5608f571f1a3` |
| 96 | `def` | [Structomorph.symm](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-symm.md) | 1142 | `declaration-track:569b1dfc1b711d8cb322404bff6f30ad173bdb18bd0777d565fb52b4774f72bb` |
| 97 | `def` | [Structomorph.trans](../../../../DifferentialGeometry/ChartedSpaceNamespacedMemPregroupoidOfEqOnSourceAligned.lean/declarations/structomorph-trans.md) | 1153 | `declaration-track:88bebaefb5e26f7b4b1052d550022b8143f67e32a356a708a84605847594e20b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c6caa4ead96ca8a5885c439a720d9139b4db3e20307ee9ec2da9ef975d1c5aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
