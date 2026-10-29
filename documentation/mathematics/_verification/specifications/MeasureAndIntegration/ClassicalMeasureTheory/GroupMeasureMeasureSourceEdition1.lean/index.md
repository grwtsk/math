# Verification target: Group Measure Measure Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac14ba2de1b7d2ca552c7c86b9beb1f8f218d3a5",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac14ba2de1b7d2ca552c7c86b9beb1f8f218d3a5`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.MeasurableEquiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Action` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.CocompactMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isaddleftinvariant.md) | 45 | `declaration-track:1d941f970736eb30432de78291c5212121aa2352f75321432bfc346200e2c730` |
| 2 | `class` | [IsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulleftinvariant.md) | 53 | `declaration-track:dfc1983f0f3e46184001e1214a309fdcae340bba67a0df4fcd80b594c7ee2222` |
| 3 | `class` | [IsAddRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isaddrightinvariant.md) | 60 | `declaration-track:892deeeedc9f2c15f6e803448059ff6a4a850eb83f3d6509433d87c699b3cc7d` |
| 4 | `class` | [IsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulrightinvariant.md) | 68 | `declaration-track:365b77722f5819d6682d19eb1b34c245bee877b1ab696e64a66b940ee0536d86` |
| 5 | `theorem` | [map_mul_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-mul-left-eq-self.md) | 82 | `result-track:efeba655355d28ac7143ab77fefb2df4bc00d2778e73a5a08c3966a5001a2869` |
| 6 | `theorem` | [map_mul_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-mul-right-eq-self.md) | 89 | `result-track:414b20039833bcf2b7a655cb2c023998cbed93134dba313739a3a896e30bbe83` |
| 7 | `instance` | [isMulLeftInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulleftinvariant-smul.md) | 95 | `declaration-track:d402ff68c882b282ab1f4122d5c8e240bb04528f6397b1cf68e1825045e862ca` |
| 8 | `instance` | [isMulRightInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulrightinvariant-smul.md) | 101 | `declaration-track:92c2624bd490b9c2e77274787e50a079b56b355f2e9852f277b80c70cf9f817e` |
| 9 | `instance` | [isMulLeftInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulleftinvariant-smul-nnreal.md) | 108 | `declaration-track:9e272c2b899aaa001874c6321844b141115c7a68d4e022f5524e85a90f20f394` |
| 10 | `instance` | [isMulRightInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulrightinvariant-smul-nnreal.md) | 115 | `declaration-track:df6cf31fe6e4fc4493394e2865d9c1d8cadd8867678da1635cdf33a27ee0eda6` |
| 11 | `theorem` | [measurePreserving_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-mul-left.md) | 126 | `result-track:2b84fb13ffc2eea0d4aa7d9095cfb6c721415e62680820197f2295a257c86350` |
| 12 | `theorem` | [MeasurePreserving.mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-mul-left-source-edition-2.md) | 133 | `result-track:6b87e922a476cf6717f79c245f3ef117dab05ba158f74d0e055f9c0fdb721d29` |
| 13 | `theorem` | [measurePreserving_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-mul-right-source-edition-2.md) | 141 | `result-track:ab7b8b805a201d88d208f0146d22280f813b70cb36e4d3b383c78af883bcf3d1` |
| 14 | `theorem` | [MeasurePreserving.mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-mul-right.md) | 148 | `result-track:69597accd6c280aae9a81bc7d93c477b889632018cf26bd2ed1ed1f5185b204a` |
| 15 | `instance` | [IsMulLeftInvariant.smulInvariantMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/smulinvariantmeasure.md) | 156 | `declaration-track:b161e642545a913a59398dc673862e4936ab8e0242454fcaae7c7bcd7a4dbbb5` |
| 16 | `instance` | [IsMulRightInvariant.toSMulInvariantMeasure_op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/tosmulinvariantmeasure-op.md) | 163 | `declaration-track:ae704996976e614c5292a54c8e2d83b12b4b713c3a6cfffb6ea7281c8f936a21` |
| 17 | `instance` | [Subgroup.smulInvariantMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/smulinvariantmeasure-source-line-170-occurrence-2.md) | 170 | `declaration-track:f216d649d4a85b2630f1f1ab4956f72592d5ada186324c9dc766e162f8594821` |
| 18 | `theorem` | [forall_measure_preimage_mul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/forall-measure-preimage-mul-iff.md) | 178 | `result-track:67e83b9b7e2ac35dc02296db3c8e943b489979cd23f369f4a76c3b9433d8ff24` |
| 19 | `theorem` | [forall_measure_preimage_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/forall-measure-preimage-mul-right-iff.md) | 191 | `result-track:550cb2ad6d71be93d3603f14c12dc9e4700928a34821635d463bded09afa9ca9` |
| 20 | `instance` | [Measure.prod.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instismulleftinvariant-source-line-203-occurrence-2.md) | 203 | `declaration-track:a90da0a43d967c82a1890319706a5df4cc448ee8df289ecb316d3209bf7bc1d2` |
| 21 | `instance` | [Measure.prod.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instismulrightinvariant-source-line-217-occurrence-2.md) | 217 | `declaration-track:f923d33666e0f7ab4f78c2589b1671bc29b7b3b452fbcf6fdb909376393ba640` |
| 22 | `theorem` | [isMulLeftInvariant_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ismulleftinvariant-map.md) | 231 | `result-track:d9469d82f5a106e7c9f8d4108e3091cc416947ed1bf3b7acdd4bfb0400054acb` |
| 23 | `theorem` | [map_div_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-div-right-eq-self.md) | 254 | `result-track:6dd82d357a43eae9b543f6473f93209bb1aa043e5e5512021c9e61f3cb553aef` |
| 24 | `theorem` | [measurePreserving_div_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-div-right.md) | 266 | `result-track:0c909df96addbebe2c8db63c345ef907813ee31f3fa900c18b37ab250e162b8f` |
| 25 | `theorem` | [measure_preimage_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-preimage-mul.md) | 276 | `result-track:a63c260b6faecacd030f2ad4679be0257ce883a0ebf2577fca8bb2966297ee96` |
| 26 | `theorem` | [measure_preimage_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-preimage-mul-right.md) | 286 | `result-track:0f34cfaeaaa122083f8bafcda794f24a387a62490cfde283a2d5da3e92fc77c1` |
| 27 | `theorem` | [map_mul_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-mul-left-ae.md) | 296 | `result-track:6fa8a071d3769c90d7d03dca56004cea1e22aa6a289a9d23b9c20e83762a0916` |
| 28 | `theorem` | [map_mul_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-mul-right-ae.md) | 303 | `result-track:f36ebe4526caa054766e569bce4d0f5343cb355ca17a6c162563c37d3d9262bb` |
| 29 | `theorem` | [map_div_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-div-right-ae.md) | 310 | `result-track:1bff48c5789e7b6ce15fb6aeb0f6099640fedd856cf5f3bf8505e2dbd60e3031` |
| 30 | `theorem` | [eventually_mul_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/eventually-mul-left-iff.md) | 317 | `result-track:ae967210c0db6b7a394e64313c87db455687eb7974c6a6acf5d615a61659bf87` |
| 31 | `theorem` | [eventually_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/eventually-mul-right-iff.md) | 324 | `result-track:7097a20079031ff9529bb7f8c518ebf7209fad51f812a4e503facc4bbf73acf3` |
| 32 | `theorem` | [eventually_div_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/eventually-div-right-iff.md) | 331 | `result-track:4a8badfc19f91c4159af7c10872d330e1604dc92cde51d81a3619fc7254e8b54` |
| 33 | `def` | [inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/inv.md) | 347 | `declaration-track:31024035568a9ac5f3c29f486a227692193a7e52b4f8097766f25dd96a53543a` |
| 34 | `class` | [IsNegInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isneginvariant.md) | 354 | `declaration-track:02ba88b9b5b4814f6091e20639a129f323d5a303afa5b87f9f6935981bbcbc88` |
| 35 | `class` | [IsInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isinvinvariant.md) | 362 | `declaration-track:98d4b141b6c7086cf11e3f0b0aaf42078299ecdbfb459163a2fcb69cffcfc806` |
| 36 | `theorem` | [inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/inv-eq-self.md) | 372 | `result-track:b20ce534f83706e9875502c0da670a495026c6b0f45581edea2673f5fbe50800` |
| 37 | `theorem` | [map_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-inv-eq-self.md) | 378 | `result-track:1769525b3c000890a1a7ede0160bb97c89c1f615de296930e97a76a0ac76b4cc` |
| 38 | `theorem` | [measurePreserving_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-inv.md) | 386 | `result-track:abe1287a407127f51cc69186c87f76b3036099664f02c7c5d375f7506fd8cee6` |
| 39 | `theorem` | [inv_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/inv-apply.md) | 398 | `result-track:5544d413404c6afda87c633770c3a026593c6e732934fbdde04003a757b65ced` |
| 40 | `theorem` | [inv_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/inv-inv.md) | 404 | `result-track:421626c651774d5f8e6ee5cb53f6fcffaab6ca72f08f21f89ea073a4530d0ca9` |
| 41 | `theorem` | [measure_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-inv.md) | 410 | `result-track:9b013bd39a41a0cd41d6ab589bdd07dc4934f951bc8630c43cdbb26b97bdcfa0` |
| 42 | `theorem` | [measure_preimage_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-preimage-inv.md) | 416 | `result-track:0debc809d084943153f8a508ee7bd13a3ff854935ce0328c0e4f99092862a86a` |
| 43 | `instance` | [inv.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/inv-instsigmafinite.md) | 423 | `declaration-track:8af86cfc027a2877ec2a0666079b52713d2255a341425511b4e6fcab760f93c2` |
| 44 | `instance` | [inv.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instismulrightinvariant.md) | 435 | `declaration-track:c3e1f674ac1df98d0b66a6b472bf41debd1bd1a7a6f8fd1c448fcfd36e3788d3` |
| 45 | `instance` | [inv.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instismulleftinvariant.md) | 445 | `declaration-track:22d4f3f32004b40f4f1492516b2cd63104a10019edf63a3b8035ff590a27833f` |
| 46 | `theorem` | [measurePreserving_div_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-div-left.md) | 455 | `result-track:24dd3236e02f6f931006756755d7cf36c2c08dbd81a33d4ea728b1cd0b5ad366` |
| 47 | `theorem` | [map_div_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-div-left-eq-self.md) | 463 | `result-track:e17c4f98a31d5c5cf993e88297416d73b556f0c67ac5e5b436d0205f386f270e` |
| 48 | `theorem` | [measurePreserving_mul_right_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measurepreserving-mul-right-inv.md) | 470 | `result-track:eb392a859fc0901c7d32f56d0d3253c9f1d11703b49bba97b630172036ceab3b` |
| 49 | `theorem` | [map_mul_right_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-mul-right-inv-eq-self.md) | 477 | `result-track:1f5fb5c224097a0c8f8091cba8a47f4cc8d3944b0ad6ccdd38e436ecc1825df0` |
| 50 | `theorem` | [map_div_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/map-div-left-ae.md) | 490 | `result-track:6768187e02b999d7fb23818c7325cca5cc4324a6b622bb22c1e8778aae660b2f` |
| 51 | `instance` | [Measure.Regular.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-regular-inv.md) | 505 | `declaration-track:da419a445ac9f7ccadd791190bebd1054a6de16ca23b61b3c66be9f7973946bf` |
| 52 | `theorem` | [regular_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/regular-inv-iff.md) | 513 | `result-track:10b554a02d63b7b1eca17594088484381c14a9cd911c8839ef12d983026f41ec` |
| 53 | `theorem` | [isOpenPosMeasure_of_mulLeftInvariant_of_compact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isopenposmeasure-of-mulleftinvariant-of-compact.md) | 527 | `result-track:c5086e78aee5d34f9b619589974e2156c6bca4e6dac11a4a3e1646f3aa24074b` |
| 54 | `theorem` | [isOpenPosMeasure_of_mulLeftInvariant_of_regular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isopenposmeasure-of-mulleftinvariant-of-regular.md) | 544 | `result-track:6e17e10f9953da6aedaca5c5eb86902ab9cb2922c9c578d084b87a86b2342fe6` |
| 55 | `theorem` | [null_iff_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/null-iff-of-ismulleftinvariant.md) | 552 | `result-track:362cdc323cb352de18039915b694cf584c580dae0978141b95362d3945cfbc36` |
| 56 | `theorem` | [measure_ne_zero_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-ne-zero-iff-nonempty-of-ismulleftinvariant.md) | 561 | `result-track:733be43bf30a6c99a1a464c4289ecc33d155941d57b27cf4a65b764aeaf90ab9` |
| 57 | `theorem` | [measure_pos_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-pos-iff-nonempty-of-ismulleftinvariant.md) | 568 | `result-track:d91d5a55d70837f9ee0f501f857e5e24d959d6481e0900aaf5ac8f54ccc51601` |
| 58 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant-source-line-579-occurrence-2.md) | 579 | `result-track:78d8af8b594d8b2a45d7562819c53915a5af590d7c371b068d06ced2340ff285` |
| 59 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant.md) | 597 | `result-track:398844177b85e79f8f478a3602a73a315dc73de8cd47218c05fbbaae42190b3f` |
| 60 | `theorem` | [measure_univ_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/measure-univ-of-ismulleftinvariant.md) | 609 | `result-track:479d7b82ac606a0ba9709cb3ece2903db8fc3d0f854bd244cc62463ff583b41b` |
| 61 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instance-source-edition-4.md) | 667 | `declaration-track:ca8e85d1cca05001322e9acbe16386f0ed7a21cb273d79f4a6fe936f010cb694` |
| 62 | `class` | [IsAddHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/isaddhaarmeasure.md) | 681 | `declaration-track:4e5f0c987ba94a9dabd9f63fa609f8c6c32a0ae5adf75b1af7df3d7c13dce59d` |
| 63 | `class` | [IsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ishaarmeasure.md) | 689 | `declaration-track:923ccb2c459d3223ef6cc94723d51e6eb55486bf3a7fadf7e47b83f07fa38fe4` |
| 64 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instance.md) | 705 | `declaration-track:496ea687a76c9cc774749d20891725b8a1bb21e0314ded1bd9d2d69fd56cca32` |
| 65 | `theorem` | [haar_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/haar-singleton.md) | 717 | `result-track:76c5276dc014fa9a31df0bb654c228fb968bc5a54ea6d83f60d786d1fb967bee` |
| 66 | `theorem` | [IsHaarMeasure.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ishaarmeasure-smul.md) | 724 | `result-track:a595551301e77fbb1efc1b2c57601aa690ec1908a7205ed67f21d67c82f63a1a` |
| 67 | `theorem` | [isHaarMeasure_of_isCompact_nonempty_interior](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ishaarmeasure-of-iscompact-nonempty-interior.md) | 735 | `result-track:480dee660d687b0ee5972875a5880a9df6d70f9c25dcd7a7e23c6552992099d8` |
| 68 | `theorem` | [isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/ishaarmeasure-map.md) | 749 | `result-track:9f4930971749f500ce86086188bd9c99cb649e89f69836a098c2a60f85a2a980` |
| 69 | `theorem` | [_root_.MulEquiv.isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/root-mulequiv-ishaarmeasure-map.md) | 764 | `result-track:8d78d1c7d98f30637689cfec8ce5f25820553866b13c152b7871a0eb3013fb0d` |
| 70 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instance-source-edition-3.md) | 780 | `declaration-track:547c71f1d1b380df86bc9ac73506f79ba76d276c5f58a261c3ecf9e5c333e780` |
| 71 | `instance` | [prod.instIsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/prod-instishaarmeasure.md) | 789 | `declaration-track:639237726bb910a575ab6dd8da618122833bd3b342fa3d3d4050e72bc8921980` |
| 72 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureSourceEdition1.lean/declarations/instance-source-edition-2.md) | 807 | `declaration-track:4ee586b8b15c3005fc02d256ae39a7c498bb60bc74168149da4c08b2432d558b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb54c1d2060c6f6f56bce3c44b617a9df936ff256fc1ec3b984124dfc0d0737a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Measure/Variantddc74956da53b774472b2ede13ca7478fee8fc8b2860314d6d314193ec0eafa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
