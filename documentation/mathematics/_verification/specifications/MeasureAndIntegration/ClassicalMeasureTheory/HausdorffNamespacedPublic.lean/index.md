# Verification target: Hausdorff Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83fe34bf6c8572092724fd8cf11f2c54e7b1080",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83fe34bf6c8572092724fd8cf11f2c54e7b1080`.

Source path: `GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.AtTopBotIxx` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/ismetric.md) | 145 | `declaration-track:a0556d6b3142d53b3b4e2f0b965f43ea00aa3b0eb53015bc9f30f769044fd6c9` |
| 2 | `theorem` | [finset_iUnion_of_pairwise_separated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/finset-iunion-of-pairwise-separated.md) | 153 | `result-track:fb64508c92c2956aa588ff7c3cefd51c6616d17753e7549433b64207ae4cd8ed` |
| 3 | `theorem` | [borel_le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/borel-le-caratheodory.md) | 169 | `result-track:072b22efc7f88b6bdc70a451488399006b1aa4c45743b33aa58f4d0ce9942e35` |
| 4 | `theorem` | [le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-caratheodory.md) | 237 | `result-track:4475cabde79e11f39e343cd0c656c8949d5624bf844161d45f8408fc69756a41` |
| 5 | `def` | [mkMetric'.pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-pre.md) | 256 | `declaration-track:6aa7a7135717df411031544cb922be7bb591ed4c6491985c7014caac3cbae593` |
| 6 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-source-edition-2.md) | 262 | `declaration-track:3495971e58db7e6f8774230d04661c9105ba2eb8762b8a29ef8c41fa3ec537ff` |
| 7 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-source-edition-3.md) | 267 | `declaration-track:c06f554dc5f70ace542a2ec58f9895aeedd90bef1309b15b2aaf968ab9026ca3` |
| 8 | `theorem` | [le_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-pre.md) | 274 | `result-track:7430cdd18721ef655846fc7b4f9c7bc7d92b706ae91ac73a888006ace1539d16` |
| 9 | `theorem` | [pre_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/pre-le.md) | 277 | `result-track:ff18038285d4a9c092807fcfcf85dbb55550bf2bba15e4bb50f8f439a36237cd` |
| 10 | `theorem` | [mono_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mono-pre.md) | 280 | `result-track:6756d1e7bfdaec4c0751575a5f595173cb9e12c8c772e19bf3fddc90f11b1d38` |
| 11 | `theorem` | [mono_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mono-pre-nat.md) | 283 | `result-track:7cee710f0c11dbf59515e3e43ffc7a233b4f3ebd70511e6a98cbf2bac9b1ba2a` |
| 12 | `theorem` | [tendsto_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/tendsto-pre.md) | 286 | `result-track:8d8d9f274cd04b7d5bc29ae054a536d7c7f95e379261923096885486bca1668f` |
| 13 | `theorem` | [tendsto_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/tendsto-pre-nat.md) | 292 | `result-track:b145255bf5319da590ba583fde5135f88f7462f26c766613ef93fe341d15df73` |
| 14 | `theorem` | [eq_iSup_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/eq-isup-nat.md) | 298 | `result-track:a219755c6978cd6300cde8a89f3af2f46b847ad0b8937eea996582ed7b41d0ca` |
| 15 | `theorem` | [trim_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/trim-pre.md) | 306 | `result-track:1d9e6f07681408d959e75c0820dcd99b29fcbc2dec954c24ae76a024471297c5` |
| 16 | `theorem` | [mkMetric'_isMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-ismetric.md) | 317 | `result-track:16f215e56d3c958174591672620e76b6a725ac8460d4e9ccea1aacd21bfabfd9` |
| 17 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-mono-smul.md) | 331 | `result-track:39969f199dc185760444a34c41b0e58d8195507cd7f0b451a93bcb69d8b7ee50` |
| 18 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-top.md) | 347 | `result-track:3108623a4c5118ab0db33d12e657f405da078d5edd605edea9d4e942d45b3762` |
| 19 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-mono.md) | 355 | `result-track:9771ebc1ca9da847164ba1f01c096bec3ac63c248bf30276f4c91f42465c195d` |
| 20 | `theorem` | [isometry_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isometry-comap-mkmetric.md) | 359 | `result-track:4d580955d79d5eb0ff62b991410931ed5947737e2de6518f5b1856344aab2c36` |
| 21 | `theorem` | [mkMetric_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-smul.md) | 372 | `result-track:463780a95df27f07ae231ff86aff17944466e7cac29c6dec1dcc147f08fab93c` |
| 22 | `theorem` | [mkMetric_nnreal_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-nnreal-smul.md) | 377 | `result-track:978d8485b0a4d3323b8a5a955ac67299dacf8a9faaddb6791ed13a02f6fa5620` |
| 23 | `theorem` | [isometry_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isometry-map-mkmetric.md) | 382 | `result-track:54ef383ba9474bee85abdc6ba061f5a5b8462145147ba0baba46bf9939da2150` |
| 24 | `theorem` | [isometryEquiv_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isometryequiv-comap-mkmetric.md) | 386 | `result-track:17b44bb35d4d5f47a2a3e9a7801a7d6c21106211491d9bb7f3c7fad0baad14fa` |
| 25 | `theorem` | [isometryEquiv_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isometryequiv-map-mkmetric.md) | 390 | `result-track:070519e709ce04a997868a19ff1848693ce3ab5f747807ccfd212c5404feefc4` |
| 26 | `theorem` | [trim_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/trim-mkmetric.md) | 394 | `result-track:430ab3a495b0ba31babc145f25ec32967cda06e693b6d74b1ef7734bd421ff15` |
| 27 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-mkmetric.md) | 401 | `result-track:3bedb54d61132b9f3af3ac10b7e8d0c5a662ed1591cc0ba0706c776473894cae` |
| 28 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-source-edition-4.md) | 424 | `declaration-track:ed1a9d45219f732ec7af27a627df816a1efea7bd407385349d2f2cf2337a3e3f` |
| 29 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric.md) | 430 | `declaration-track:12ee6740e8fd02bb85590a4d7df8f83b9823739e0b8f08ba9e516acf5214be98` |
| 30 | `theorem` | [mkMetric'_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-tooutermeasure-source-edition-2.md) | 434 | `result-track:7a503af99be3b8929ad2983cc73209e8326da2aa4cb67daa904d0c39927946e9` |
| 31 | `theorem` | [mkMetric_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-tooutermeasure.md) | 439 | `result-track:0706eb948b6926fc160bddab7eea489e792dfcf6953e939e7ebc4ae13d3f4389` |
| 32 | `theorem` | [OuterMeasure.coe_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/outermeasure-coe-mkmetric.md) | 445 | `result-track:297393af014e48d2274a96703ba5acafc3a749daa6de2fc57bc17e5ef61c74d8` |
| 33 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-mono-smul-source-edition-2.md) | 455 | `result-track:f982b0710317823a5d79ac9cd5672fee993aad2eb5d9a47c9535105897525d63` |
| 34 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-top-source-edition-2.md) | 461 | `result-track:867fff303644ed485d42bf345b8e36a797cb0cca2c75559edbbba9768e7e6fbe` |
| 35 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-mono-source-edition-2.md) | 467 | `result-track:bd6f9f9ee3353727dcc46f13331f498917a7c104045d2aee8006d2410c75a979` |
| 36 | `theorem` | [mkMetric_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-apply.md) | 472 | `result-track:f01faf1b19d872202faaea8f7dadfdb9cbbcbb758f104f652f56f47754306112` |
| 37 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-mkmetric-source-edition-2.md) | 498 | `result-track:532e6d2e3b24f6a1f9aeaa74e0dd8567232553e2e3d8c0ecc4d925dd63a3e424` |
| 38 | `theorem` | [mkMetric_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-le-liminf-tsum.md) | 506 | `result-track:926035c6e7a8093986dcf3f0346539c12f3a255c08ac9267b06c8fa675ad1e71` |
| 39 | `theorem` | [mkMetric_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/mkmetric-le-liminf-sum.md) | 531 | `result-track:bd85152e1cf4664a2a7e484849c1e992bbc7a1a86623badf4d36f25b124f47e8` |
| 40 | `def` | [hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure.md) | 543 | `declaration-track:7cb5d4a673c58962b370acc898b1cf457dfe878f6541dbb94a6f7c8e134af5a3` |
| 41 | `theorem` | [le_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-hausdorffmeasure.md) | 549 | `result-track:c496a410caa11745e11dcc683c7d78ff159ef9cddef26b86f899be317eb964dc` |
| 42 | `theorem` | [hausdorffMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-apply.md) | 554 | `result-track:2c2aa420428e5aa4dc02d8a233e4ea29ed17f1bdd56b96480d4251a1bbe6a162` |
| 43 | `theorem` | [hausdorffMeasure_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-le-liminf-tsum.md) | 563 | `result-track:fbfca55189fc5bd9637e6c994b870a1907dff8007f4a6fddd32ba7f92b213c75` |
| 44 | `theorem` | [hausdorffMeasure_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-le-liminf-sum.md) | 571 | `result-track:e5d9433cf3e2e0840f06f8914f356c5c4695e6602a2a738474b048692a1dfd06` |
| 45 | `theorem` | [hausdorffMeasure_zero_or_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-zero-or-top.md) | 578 | `result-track:75a630d308bdef5d6ae47c20ae3af4808572784059f5d058a637b11f04cef014` |
| 46 | `theorem` | [hausdorffMeasure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-mono.md) | 606 | `result-track:137e2d17363e9d7f44e21cfad8b66bd4e27e68ac9421ba1423d4690b63d911df` |
| 47 | `theorem` | [isSeparable_of_hausdorffMeasure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isseparable-of-hausdorffmeasure-ne-top.md) | 611 | `result-track:5a152f907e0c11b855d0ee936f9cc4e9466087c02e09cfcaa6aa61bbcc62e272` |
| 48 | `theorem` | [nullSingletonClass_hausdorff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/nullsingletonclass-hausdorff.md) | 623 | `result-track:1a73c003e5265bdf954363c7fadc2ff3225a0b66f11f413a729fef77b7eb7ca2` |
| 49 | `theorem` | [hausdorffMeasure_zero_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-zero-singleton.md) | 636 | `result-track:9b9aac5d6a4e9750b1e62564c38a4ae87c8f3264e5454f6cd6b75a59ff7fe2e6` |
| 50 | `theorem` | [one_le_hausdorffMeasure_zero_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/one-le-hausdorffmeasure-zero-of-nonempty.md) | 659 | `result-track:c2129b043bb6fb05aabf4065fcc1e52d573142cf31abfd6d82a0f8dad8ca45c0` |
| 51 | `theorem` | [hausdorffMeasure_le_one_of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-le-one-of-subsingleton.md) | 665 | `result-track:ff7d812ed58674f843d6d7abcf703d04ca7590ff044103e258ffa4bab3315288` |
| 52 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-image-le-source-edition-2.md) | 696 | `result-track:5141289e55468b32314e770e72e60f9b3abb19f34a0670e8bfd7d6ae9338559c` |
| 53 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-image-le.md) | 741 | `result-track:3345e7838e020208a349a4bd0fe270db7e666417f6c7395ffeb8af141c23ebed` |
| 54 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-image-le-source-edition-3.md) | 753 | `result-track:798e68455b23f9a4d644dec4c4817ad9c93f1553912e2244caef41ffe11204e0` |
| 55 | `theorem` | [MeasureTheory.Measure.hausdorffMeasure_smul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/measuretheory-measure-hausdorffmeasure-smul.md) | 761 | `result-track:11ea223d2099f3b940cb2619cf369962e6b3c8979e68ee2fadc82d675a29daa1` |
| 56 | `theorem` | [hausdorffMeasure_preimage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-preimage-le.md) | 784 | `result-track:5ebb9235758befb140c30ffc97a3f70ba931ef2eb9c8109f413bf6166a94f975` |
| 57 | `theorem` | [le_hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/le-hausdorffmeasure-image.md) | 815 | `result-track:99357fdb258fcc523484e7005027fda2a3f730bfad8b5db69ae6c58edeeba201` |
| 58 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-image.md) | 832 | `result-track:505852f6ae13360320740ea4e0e73668cdf70c70702c7ecd874951e7b5c2b54e` |
| 59 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-preimage.md) | 838 | `result-track:53b5a2c5b3df56b608989bfdb1f788029740fe6d5d4d4096012880c1206d5d2b` |
| 60 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/map-hausdorffmeasure.md) | 842 | `result-track:bf2091fd64093905b152ef9a09b02c3e0ed594e9b6095a427bec8ba2cb5ff543` |
| 61 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-image-source-edition-2.md) | 853 | `result-track:c1f053e761b7c56158c3d04a7116de9cf35afadeec99137a28c25b88acc7f64b` |
| 62 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-preimage-source-edition-2.md) | 857 | `result-track:5c89c50038d3d06d74b6c04f1d9158c283b7a731ffdddd8f3660d36e631936cd` |
| 63 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/map-hausdorffmeasure-source-edition-2.md) | 861 | `result-track:c05a734012de24afb85c4bd6348d0dd318df91d0d0b7924ee385d8a610bfeaae` |
| 64 | `theorem` | [measurePreserving_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/measurepreserving-hausdorffmeasure.md) | 864 | `result-track:760ff7bccefd8f0ed1ca1c2bb379b3c26ef4a43bf217d56e704d2b4ddaa1ac81` |
| 65 | `theorem` | [hausdorffMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-smul.md) | 872 | `result-track:25dbe45085fc33232a568d12b75cc8b34728098d9a21e0310fac9e03866600a4` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 877 | `declaration-track:4a99efb7208644fb31ca82ae453a6096463c5b51147e4bb57516d75e7613cd5f` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/instance.md) | 882 | `declaration-track:306b35bf419afb40e87be92cfffb532bc77dda86bea2d872509cba07ce917f4b` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 886 | `declaration-track:70c0b48b5f44bc715676ea3b1a84042f8cfb8c43ef0d08ecfccd0a8c61e24419` |
| 69 | `theorem` | [hausdorffMeasure_pi_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-pi-real.md) | 896 | `result-track:59f5262280c4674660e2580495d0a8dd1c51d1d82924a28caada4660e0481353` |
| 70 | `instance` | [isAddHaarMeasure_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/isaddhaarmeasure-hausdorffmeasure.md) | 986 | `declaration-track:5134c1914a2f2ad8ffa0a3f307f4996433f3ba870eb4f3c5e73bfa825e64ee4b` |
| 71 | `theorem` | [hausdorffMeasure_measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-measurepreserving-fununique.md) | 1012 | `result-track:79344bfc599862cbc808c11fba9c869c4bc5ac728296864c91497dca8668f27a` |
| 72 | `theorem` | [hausdorffMeasure_measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-measurepreserving-pifintwo.md) | 1016 | `result-track:5815b54d2f36654da65bd5d6efcc5d5ebb70e9e68830bfdd86ee3f4de812aec9` |
| 73 | `theorem` | [hausdorffMeasure_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-real.md) | 1024 | `result-track:e944414e1ff4e7cff0300177c930411e93dde109e4dd09956677b6333d91c935` |
| 74 | `theorem` | [hausdorffMeasure_prod_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-prod-real.md) | 1031 | `result-track:a546665e7db0e8c5519d67ad04be74245de26d66518ef888992caa5ad2852f8b` |
| 75 | `theorem` | [hausdorffMeasure_smul_right_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-smul-right-image.md) | 1042 | `result-track:432c7a5cee805f1914f015406ff7200ff857c83883ec66fc48e838458e425cb2` |
| 76 | `theorem` | [hausdorffMeasure_homothety_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-homothety-image.md) | 1068 | `result-track:7233da20571709d20fcaf114b6f47c1d94824dba3e7f252f9b33f5cbf1ab7390` |
| 77 | `theorem` | [hausdorffMeasure_homothety_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-homothety-preimage.md) | 1078 | `result-track:db57bbcbe3744e9ed4ed5032c603c83e56048c73f277a09465138af42f6989df` |
| 78 | `theorem` | [map_homothety_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/map-homothety-hausdorffmeasure.md) | 1085 | `result-track:712955951db1ba1eafe207050b00ddb82b1f6a0fc8d813b10c7c6eacb5cdff5b` |
| 79 | `theorem` | [hausdorffMeasure_lineMap_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-linemap-image.md) | 1101 | `result-track:31b129533026707a80409200ff5a976040e45656866ffd5483ec991b6ebe3a5e` |
| 80 | `theorem` | [hausdorffMeasure_affineSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-affinesegment.md) | 1111 | `result-track:5690c6f57d619bb80ce82aae401673938598a1b7d15208ca6038f445e83a4aa3` |
| 81 | `theorem` | [hausdorffMeasure_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-segment.md) | 1120 | `result-track:0c4d0d7e8d28d6a4edcd7b5194f7d551cf5c5284ff3b69c13da22068c259c1a2` |
| 82 | `theorem` | [hausdorffMeasure_orthogonalProjectionOnto_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespacedPublic.lean/declarations/hausdorffmeasure-orthogonalprojectiononto-le.md) | 1129 | `result-track:755556826feded56b1bd78ce734cf592d6142bb1311b1a55bb025c5e9747e39a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f941029c16eeabab63edc54df78bc576a165071c911f606b5e64e65f0d8d028 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
