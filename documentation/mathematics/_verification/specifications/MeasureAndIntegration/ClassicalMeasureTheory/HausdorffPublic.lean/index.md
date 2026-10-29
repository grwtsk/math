# Verification target: Hausdorff Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c79bc8875aa7428d749bfc0e3cf2684bcee37b92",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c79bc8875aa7428d749bfc0e3cf2684bcee37b92`.

Source path: `GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.AtTopBotIxx` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/ismetric.md) | 137 | `declaration-track:3e03732fcc48fa24b6a32cfc5629d9145032f7ae5068ddf26d23aad8de061025` |
| 2 | `theorem` | [finset_iUnion_of_pairwise_separated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/finset-iunion-of-pairwise-separated.md) | 145 | `result-track:3859e9f6e84ac5db33f39e17660a457dcc2dc12c4bce29e98fc1bbcf06df20fd` |
| 3 | `theorem` | [borel_le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/borel-le-caratheodory.md) | 161 | `result-track:efe5c6cde4260f3893583fce0b636bd141b7d824180d666bb6da13dc54276b44` |
| 4 | `theorem` | [le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-caratheodory.md) | 229 | `result-track:3bee2f9fbd26d37bb97d69531f86d476cad5abd1d1168057a2573ba890b81bde` |
| 5 | `def` | [mkMetric'.pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-pre.md) | 248 | `declaration-track:46e21ce2cea910dee067e7801648186f85440a05789c359335bbcbc9a967bb68` |
| 6 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric.md) | 254 | `declaration-track:9ae15c26471ef56eea23796c216ec17be67a1aa73cf4420e6e4ad1b46dfc40a7` |
| 7 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-source-edition-3.md) | 259 | `declaration-track:c56d5060cd5aa1eee9684d26c154c7081bcdac6b44b518a94df89f265e16416c` |
| 8 | `theorem` | [le_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-pre.md) | 266 | `result-track:32c491551c8a04cef328f23a35c77359dc28b868a1c713e470132786884e3a6a` |
| 9 | `theorem` | [pre_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/pre-le.md) | 269 | `result-track:4410cc98c0aff8748fd767b7a43df1c31946342ccc575223aeaf3e22dde8f1c1` |
| 10 | `theorem` | [mono_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mono-pre.md) | 272 | `result-track:4227146c8cb0537ae8bfb7ef63ea5accb05d9f6ddc2a44ad4cee3ae6efc85cfb` |
| 11 | `theorem` | [mono_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mono-pre-nat.md) | 275 | `result-track:e37b22a04247c2a755b2db6c7899a939aea0f111a60bfa0515136b4c6d220a03` |
| 12 | `theorem` | [tendsto_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/tendsto-pre.md) | 278 | `result-track:65122875b62380b3b2e0bbac201585bc9d962e5fb03e9ef33a08df2a5e027246` |
| 13 | `theorem` | [tendsto_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/tendsto-pre-nat.md) | 284 | `result-track:1255c61837f13e866337bfc191e8765e52d17f1c38dc82d4fdb2bf95caafe1d6` |
| 14 | `theorem` | [eq_iSup_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/eq-isup-nat.md) | 290 | `result-track:e1e6ed4fcb615453ca1a157d621864a9461d7a19a5a4eb625caa016efdcf8953` |
| 15 | `theorem` | [trim_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/trim-pre.md) | 298 | `result-track:1a91d180f4ca3caedd5f38a3aaec8e6fb5223cae738e05924b0d2ca731065b4f` |
| 16 | `theorem` | [mkMetric'_isMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-ismetric.md) | 309 | `result-track:e16690c5e5fe35c11593ffcd4b68a70f896a0f0cbb62445e7b9a2ae61da112f7` |
| 17 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-mono-smul.md) | 323 | `result-track:541361f8bee3b614ffd504594e54decd80a22811a880d9fc84f9b2da2283a241` |
| 18 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-top.md) | 339 | `result-track:360ac409a18ad78d63c2dee46f129bd378006e5431fc265df998f92075d67e13` |
| 19 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-mono.md) | 347 | `result-track:4428c6c0d0799dded0c8de12e604a1277c16a14b5b80473f6e81858d56773471` |
| 20 | `theorem` | [isometry_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isometry-comap-mkmetric.md) | 351 | `result-track:76ff64ef6357c0b0635dbd08f55b5edd05edf5eabe89fdafe2f5dd529d461386` |
| 21 | `theorem` | [mkMetric_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-smul.md) | 364 | `result-track:f8d4742d538e62568d87711cdb92ab9e482605557fdf104c0c1b9a5450272210` |
| 22 | `theorem` | [mkMetric_nnreal_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-nnreal-smul.md) | 369 | `result-track:6bb5966854aca2158492212bcdf1b10e32c8d490ce047bdb7c5712caf7c6ff3f` |
| 23 | `theorem` | [isometry_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isometry-map-mkmetric.md) | 374 | `result-track:292a437d6d62c8c5ab0db19252cd2efbd707552a690e4e5430aec3b7c0319770` |
| 24 | `theorem` | [isometryEquiv_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isometryequiv-comap-mkmetric.md) | 378 | `result-track:41b677cf813b6cc9cee3195cd0b3eef2c9dbae784e86ce0eecf1aded0dbb45f0` |
| 25 | `theorem` | [isometryEquiv_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isometryequiv-map-mkmetric.md) | 382 | `result-track:3f0a5bd41af94fa883f17bb1ab7fcb4f7760966b6bca8becb523a092ab661ced` |
| 26 | `theorem` | [trim_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/trim-mkmetric.md) | 386 | `result-track:d423f4006ff23e493b671671f76b4fd97f973d9629530a310829bf1b47539f75` |
| 27 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-mkmetric.md) | 393 | `result-track:b119345ecf62838ba7a38753308d9aeae844ab5e3b262b83941467b1f5be66dc` |
| 28 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-source-edition-2.md) | 416 | `declaration-track:9f12c72fa3c4b8f8fea3500dcb10b13063504439b7673755617f4cf30c1f0aae` |
| 29 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-source-edition-4.md) | 422 | `declaration-track:cad94135e53a818bddb4efff5f964d2c5770d95d0d13f0487900b128bf47e261` |
| 30 | `theorem` | [mkMetric'_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-tooutermeasure.md) | 426 | `result-track:1061412fd26ee2d2376fe9b7b7522775552d8cb89496f140260e0942a565433c` |
| 31 | `theorem` | [mkMetric_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-tooutermeasure-source-edition-2.md) | 431 | `result-track:3d07b5b5dcb89ad40ed340812ec65683e4c2d24f333b299838f616782aeb081c` |
| 32 | `theorem` | [OuterMeasure.coe_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/outermeasure-coe-mkmetric.md) | 437 | `result-track:a19fa493d902cb140d36e3f7c322ee37d81456acaa773bddaf9be52708edc0cd` |
| 33 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-mono-smul-source-edition-2.md) | 447 | `result-track:8a1cd60a5bd227069b33f47093da47eb1b9ef09ca98b9cc80ee269a732b4f05e` |
| 34 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-top-source-edition-2.md) | 453 | `result-track:3e41dc2291d26e12bf916cfb5ba6d4a0f53c2ae247939f720746631fae753aa2` |
| 35 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-mono-source-edition-2.md) | 459 | `result-track:a79e2d346e677e5ebaeafe6793f438d8979d7f601a08302594a7934f479a832a` |
| 36 | `theorem` | [mkMetric_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-apply.md) | 464 | `result-track:ef55bb2d92712677ca1164850bc1cd6caff96596bb9db014effabb13ac2225ab` |
| 37 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-mkmetric-source-edition-2.md) | 490 | `result-track:b847454a18d0110f5c431695583fed662613bbc1ececb3e0b03456cbd0c09ec7` |
| 38 | `theorem` | [mkMetric_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-le-liminf-tsum.md) | 498 | `result-track:e7f2cebe2de4de27830baf1bf3dd280086c4e782c72a51736a395ec01af3409d` |
| 39 | `theorem` | [mkMetric_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/mkmetric-le-liminf-sum.md) | 523 | `result-track:c38d34e734e5d5c29af0c45cd6b20186075ac8923ff60da86444f222d7cd3fc2` |
| 40 | `def` | [hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure.md) | 535 | `declaration-track:9ddd99dabba18e68a9662efd612019d186f2f06efc16c0caf52d8e62fe8c3ce6` |
| 41 | `theorem` | [le_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-hausdorffmeasure.md) | 541 | `result-track:fcea80f1d1ff87b18a105e0e3670da45514fe8503c4fc0840e1370e6db9dbe3b` |
| 42 | `theorem` | [hausdorffMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-apply.md) | 546 | `result-track:1a41c5d2a133ede00e827b902fbd6faf4cd412cbcac638cb194bc88ed0ede0d0` |
| 43 | `theorem` | [hausdorffMeasure_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-le-liminf-tsum.md) | 555 | `result-track:bae243238e71a027d32efb81ecbbfde1ade34b1a3dc47191a2e12b558de0ed30` |
| 44 | `theorem` | [hausdorffMeasure_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-le-liminf-sum.md) | 563 | `result-track:78d6db617927945cc1ed7e3288f9c8ecc4f34b980da3b5dfe9e2cd7255bb67b6` |
| 45 | `theorem` | [hausdorffMeasure_zero_or_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-zero-or-top.md) | 570 | `result-track:57d35a3b84484ffa96766a3933a6e69e2abca6d288af6ac06a541670bdd5837a` |
| 46 | `theorem` | [hausdorffMeasure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-mono.md) | 598 | `result-track:be051d2fa46dbba07846802ae9b922d018b798806187935a3d7a4a8e33f81def` |
| 47 | `theorem` | [isSeparable_of_hausdorffMeasure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isseparable-of-hausdorffmeasure-ne-top.md) | 603 | `result-track:f6970467ebde8634d77ef50c22ddd016f900cef7c089feb6394b2d0ac1b016fc` |
| 48 | `theorem` | [nullSingletonClass_hausdorff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/nullsingletonclass-hausdorff.md) | 615 | `result-track:11214da1aa68de8fdd2818024b4835b17ef77e859a5eaa6845879c6462a7a9d4` |
| 49 | `theorem` | [hausdorffMeasure_zero_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-zero-singleton.md) | 628 | `result-track:dbff6179f8efc0b7ccd62c7819d55ebd0811f6b8cf26c315bbaca0ec7faa83f8` |
| 50 | `theorem` | [one_le_hausdorffMeasure_zero_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/one-le-hausdorffmeasure-zero-of-nonempty.md) | 651 | `result-track:b47fb11bab4c9844acba094ed22255d7d9c45933883e986a1cdc09a6976a3e21` |
| 51 | `theorem` | [hausdorffMeasure_le_one_of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-le-one-of-subsingleton.md) | 657 | `result-track:ab94523ed1bf0c3dabf51f536fd47fa8f33a338e6356215194a98397d9645b62` |
| 52 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-image-le.md) | 688 | `result-track:21d8b899cae67603224f3a07e9b94e3b1c428209bb07975bfe927b3e5554da27` |
| 53 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-image-le-source-edition-2.md) | 733 | `result-track:8a91fc1df130271e5e607007749baee8a73a3f28decebfc74d17e2574673b037` |
| 54 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-image-le-source-edition-3.md) | 745 | `result-track:8f58138e4a23305752a37a3420d032203a69793c9416145f9524fa2075ec5a3e` |
| 55 | `theorem` | [MeasureTheory.Measure.hausdorffMeasure_smul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/measuretheory-measure-hausdorffmeasure-smul.md) | 753 | `result-track:ecb28312a4300851d621a2a315dcf81bd3899d8e651abb5881e89243644bfb09` |
| 56 | `theorem` | [hausdorffMeasure_preimage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-preimage-le.md) | 776 | `result-track:d94221f559dfdc153960ef5c1af7fa53ad61248bc7612da06bffd04ab15f0c55` |
| 57 | `theorem` | [le_hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/le-hausdorffmeasure-image.md) | 807 | `result-track:be7f3869e703e392b4d48b2fd11dd7575c1fee60ad38d93b886e5aa332b0dc57` |
| 58 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-image-source-edition-2.md) | 824 | `result-track:f6465c76c2639f19422bfca047e7d30cfb4f8abd435b9cad733dd052c5386508` |
| 59 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-preimage.md) | 830 | `result-track:54f9934831b270d9445e46d63adcdb9305f2c7845406752889b37cd1050c0e9e` |
| 60 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/map-hausdorffmeasure.md) | 834 | `result-track:a69086ba487d6b8246b3443e27db7a726df32c15f4eab8941f9ff65e57ba8bca` |
| 61 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-image.md) | 845 | `result-track:7371212471e19a71ab7f5cfd83735b321966d4014c90e9a3ae9c4a62ab645a52` |
| 62 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-preimage-source-edition-2.md) | 849 | `result-track:9b0a3014d7d6a81d448163e34782b2959c74acf008253f7a2181e03067779013` |
| 63 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/map-hausdorffmeasure-source-edition-2.md) | 853 | `result-track:c45385a53b4545bb1137b66b75a076f07ceb859632601cdcccc3b88aecf8c588` |
| 64 | `theorem` | [measurePreserving_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/measurepreserving-hausdorffmeasure.md) | 856 | `result-track:2f285351a7d6d54570c5bf65c9f6e9cf6bd954f4b872d77244582f85625ea507` |
| 65 | `theorem` | [hausdorffMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-smul.md) | 864 | `result-track:6d47c15fedcd6fb3739db0a582c660f88f14ccb6ec71c970e16dfc8caf2371c2` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/instance.md) | 869 | `declaration-track:88c070a430cc4d1995884883dc647f75e10f042f39e0808702da64c6c39afb37` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/instance-source-edition-3.md) | 874 | `declaration-track:e96df1a7e2bed819fd5e568ea282d412b1489ffe09cb294f0034bd2f13d8911b` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/instance-source-edition-2.md) | 878 | `declaration-track:c1af8edc115eb3fc40451cbec575c1f48af40a2aa972b7672a55a8b2a8d0e6c5` |
| 69 | `theorem` | [hausdorffMeasure_pi_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-pi-real.md) | 888 | `result-track:c30072cd753a8619e434277e73191e92e3a6e2d638a7eaba0dc45dd280b2f686` |
| 70 | `instance` | [isAddHaarMeasure_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/isaddhaarmeasure-hausdorffmeasure.md) | 978 | `declaration-track:89e007781b879a062aff0ab846ae25e668ac401d46f886d4d66d95b169b3b661` |
| 71 | `theorem` | [hausdorffMeasure_measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-measurepreserving-fununique.md) | 1004 | `result-track:8b950280db7b07314405570380d72bdd68af9a7f3c9f39a5f9f3f72c8dc1846f` |
| 72 | `theorem` | [hausdorffMeasure_measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-measurepreserving-pifintwo.md) | 1008 | `result-track:53579f5a193b361a39502fa360a6dd8733f1fea4378df0d7de10d6a366f43e37` |
| 73 | `theorem` | [hausdorffMeasure_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-real.md) | 1016 | `result-track:784bd2636a64a91def5fdb5d76688b45e3eba736b6f3f8911e818b4650a5c8e4` |
| 74 | `theorem` | [hausdorffMeasure_prod_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-prod-real.md) | 1023 | `result-track:1b5ed0bd790e150433585c163ba1c43fc62509158b1319b6f0cb25d2fc6405b7` |
| 75 | `theorem` | [hausdorffMeasure_smul_right_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-smul-right-image.md) | 1034 | `result-track:eb2cfec705ae346275df6768bb0c53e1043211d5cbf0683c36f1ad9bbf085547` |
| 76 | `theorem` | [hausdorffMeasure_homothety_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-homothety-image.md) | 1060 | `result-track:1727497ad65544e5aa442f439a20778ca4eed0570fab0e6702317ea2cb6e5611` |
| 77 | `theorem` | [hausdorffMeasure_homothety_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-homothety-preimage.md) | 1070 | `result-track:862768c0d2b99523fac26bd68f3f4bd85bebc4d866e6be0c7ac432b0aa784999` |
| 78 | `theorem` | [map_homothety_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/map-homothety-hausdorffmeasure.md) | 1077 | `result-track:adc5b8235322ea08633d265454fcc0968cd12546d1b6c0a1961e0a27215a1b1c` |
| 79 | `theorem` | [hausdorffMeasure_lineMap_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-linemap-image.md) | 1093 | `result-track:c57f798b35d2b8f4a309159d5fa0297a6ec0ca724d58ed4d36a43e5ef0c08653` |
| 80 | `theorem` | [hausdorffMeasure_affineSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-affinesegment.md) | 1103 | `result-track:7211ce43f192e44f6d1270e3911cef9b4e49d396a53510f4e356b6afc7afbdb4` |
| 81 | `theorem` | [hausdorffMeasure_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-segment.md) | 1112 | `result-track:b3d0da1f021063ba0987226064e0a1a6bf418644affddbaeb8bc807d3eb8f7ce` |
| 82 | `theorem` | [hausdorffMeasure_orthogonalProjectionOnto_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffPublic.lean/declarations/hausdorffmeasure-orthogonalprojectiononto-le.md) | 1121 | `result-track:9234029821f3b1c46665a03c37b016179439e36a3f83d0f77fcea0809473a37b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8588dc436ce572d2161a3505774e662c929b1b05cd039275fb294c9f40982a85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hausdorff/Variant3ce273d5597a7666795faab78b0e3735d66c00c3089d7cebe755c34794001f3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
