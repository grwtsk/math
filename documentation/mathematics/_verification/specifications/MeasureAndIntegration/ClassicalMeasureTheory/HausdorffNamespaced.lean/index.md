# Verification target: Hausdorff Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "065cf771a127130908e3624200b95d0b0a238f4b",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `065cf771a127130908e3624200b95d0b0a238f4b`.

Source path: `GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Holder` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.MetricSeparated` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/ismetric.md) | 140 | `declaration-track:d9c48897dd3bd398f48a7b38367ff3f02f468ef841c947a22bead8c348fbf603` |
| 2 | `theorem` | [finset_iUnion_of_pairwise_separated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/finset-iunion-of-pairwise-separated.md) | 148 | `result-track:23dca5d6964fd8b40864a12282db8e196c003823e9445774f2debc99e635be33` |
| 3 | `theorem` | [borel_le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/borel-le-caratheodory.md) | 164 | `result-track:59c13a193e936091b7570a32c85f5bb7038aabc3971478f8a406d68e7c16fa2f` |
| 4 | `theorem` | [le_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-caratheodory.md) | 232 | `result-track:8254c7bc89513d5efcc82e3c7346d507d19208810c0a8bef77cc21d368e3a837` |
| 5 | `def` | [mkMetric'.pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-pre.md) | 251 | `declaration-track:d4c9e758d97d5cc5fadf2cc09e81b774f3e27be152778a40354ab7ea066f7472` |
| 6 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric.md) | 257 | `declaration-track:0335ffefe73f8395552cd084852829624435175821d639faa1d0bdc414d1ef31` |
| 7 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-source-edition-4.md) | 262 | `declaration-track:c682104197252dd33622ec65aec0c94309c56ad3321674841aa1aca4d159831d` |
| 8 | `theorem` | [le_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-pre.md) | 269 | `result-track:1f6f76ab4590d2a246a7c9c99d50dcbcd96f94d851bbd102fb7383a045881b65` |
| 9 | `theorem` | [pre_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/pre-le.md) | 272 | `result-track:77dc00d5c2e19354ed6ccdc2609f6066738bf1f206a231304a6f8807c5d0795f` |
| 10 | `theorem` | [mono_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mono-pre.md) | 275 | `result-track:8e90425a7770a70d5fa9227ec4911156a95448cf22fa1ee7c5b766abc175b63b` |
| 11 | `theorem` | [mono_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mono-pre-nat.md) | 278 | `result-track:da31a9cce2edff92da9022db1e095857932319624270452d7f497f2b92fca954` |
| 12 | `theorem` | [tendsto_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/tendsto-pre.md) | 281 | `result-track:0a4ff8b24ca9696148e7700e93e902d23356a56284065234776a54de404c2982` |
| 13 | `theorem` | [tendsto_pre_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/tendsto-pre-nat.md) | 287 | `result-track:161c65668ed36d4ac3b506d392cdd8fafcff69f828fc91819fc45bfc0d1a1d93` |
| 14 | `theorem` | [eq_iSup_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/eq-isup-nat.md) | 293 | `result-track:68a162cbc3d79dbca8fe56cd6f6ee86619c9610bf28f90c399d17d3b6d91149e` |
| 15 | `theorem` | [trim_pre](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/trim-pre.md) | 301 | `result-track:6f6a9a26145ebe3eb94d1a2f60a99a4941c06219470aad0c6701afaa859d57b4` |
| 16 | `theorem` | [mkMetric'_isMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-ismetric.md) | 312 | `result-track:022c2dc525e5d5255a175c07f3b83d8c3c8986cbb2f552ed213689e49bce272c` |
| 17 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-mono-smul.md) | 326 | `result-track:830816c0cef09de72c10d91944ffba2b668710a222b9cdfcd8fceb16ef75897c` |
| 18 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-top-source-edition-2.md) | 344 | `result-track:956d9c6aff1fc08e341ca2307f5260de6986ab67c09bda64ad5c6bfc516dccab` |
| 19 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-mono.md) | 352 | `result-track:1b6d9bfcfc6bcd3e167c4805f69afe1ac05f496c4d80d767eaba14e98d8e3627` |
| 20 | `theorem` | [isometry_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/isometry-comap-mkmetric.md) | 356 | `result-track:6504ec533e319b68ff0c1267ab1ccb882574cd1c6201069b20868f211006ef97` |
| 21 | `theorem` | [mkMetric_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-smul.md) | 371 | `result-track:2fee8cfb8ff6cf3161c146b97ebc3b622a1d3521814d8ed330652344c2bf21f8` |
| 22 | `theorem` | [mkMetric_nnreal_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-nnreal-smul.md) | 376 | `result-track:3e9ac1e28855d904d1d5526b7e10411db39a48952877f8b61c44acd849ea2ee2` |
| 23 | `theorem` | [isometry_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/isometry-map-mkmetric.md) | 381 | `result-track:b7d9b9553629be4b834503f840164f3a5749dec45bff9e15a95536b44e6a6510` |
| 24 | `theorem` | [isometryEquiv_comap_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/isometryequiv-comap-mkmetric.md) | 385 | `result-track:95d07eed1a2377cbb0687dbf150346c43299db2703c17de2a0e8c38ec72030d1` |
| 25 | `theorem` | [isometryEquiv_map_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/isometryequiv-map-mkmetric.md) | 389 | `result-track:1a4dabd15e836b2017029b814f6061564cc213a022133e97f770b876fb37d832` |
| 26 | `theorem` | [trim_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/trim-mkmetric.md) | 393 | `result-track:827b51724ecdabfb3e1aaa0b3a2116aebc92563a981b89b7be1457db8e0e02ee` |
| 27 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-mkmetric.md) | 400 | `result-track:1da73faba32f88c691cff33d9c074e7b4a151f0c0440424913ce783c9221f2c4` |
| 28 | `def` | [mkMetric'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-source-edition-3.md) | 423 | `declaration-track:b74545c0dfd757879990a959e3c73982b6cc0e189588367778f465c39c60dd3c` |
| 29 | `def` | [mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-source-edition-2.md) | 429 | `declaration-track:a8177bcbd9f8ec7221b404834d060b2b8ec126bdc5f0dbda1a1c01b7ddbee72b` |
| 30 | `theorem` | [mkMetric'_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-tooutermeasure-source-edition-2.md) | 433 | `result-track:d5696edbe9f4c348fcb171c63579d1cb983d91d1c7e40598fd5644c7f2932467` |
| 31 | `theorem` | [mkMetric_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-tooutermeasure.md) | 438 | `result-track:19e5e643c896fdfaa0959c56cd940f83719df5f0a93006fd787530a7bf98d037` |
| 32 | `theorem` | [OuterMeasure.coe_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/outermeasure-coe-mkmetric.md) | 444 | `result-track:c94db84ebdbf1179abe919109e90db11c639372ec4e3d0c38e7e711930840d7d` |
| 33 | `theorem` | [mkMetric_mono_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-mono-smul-source-edition-2.md) | 454 | `result-track:996bd665f71fa84505ac5fdaada3ec1c8177162c664d1fdfe22db20332697b2c` |
| 34 | `theorem` | [mkMetric_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-top.md) | 460 | `result-track:457a488b053a59082138959cfc8c5370e480b3842546245fa80ce8bd3795d9ee` |
| 35 | `theorem` | [mkMetric_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-mono-source-edition-2.md) | 466 | `result-track:bca85ff5b73ff93ca99c5482e1419c168109aa4e22a9be2e7c7b8ab733f6679a` |
| 36 | `theorem` | [mkMetric_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-apply.md) | 471 | `result-track:bb907198bc9bb981f387ab670a316a5347d4c37e8bcdbcf3fad18b4c7aa0cc57` |
| 37 | `theorem` | [le_mkMetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-mkmetric-source-edition-2.md) | 497 | `result-track:57770c1e71fa606615ad4d1f3e87b3278ffb665a11abe5a0d54572dca29a9805` |
| 38 | `theorem` | [mkMetric_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-le-liminf-tsum.md) | 505 | `result-track:ea1c4095aef34442923b1380ceed9990c00793f396f8f88dcf84a7ab2e21a874` |
| 39 | `theorem` | [mkMetric_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/mkmetric-le-liminf-sum.md) | 530 | `result-track:b80030f2aab3e12bcdf59b53b2d7c31b777717fc1e6d59dcc77a76a628aa8733` |
| 40 | `def` | [hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure.md) | 542 | `declaration-track:8ccfebafe7ad5d2b5806e8134adf25007e6f3309741a784d46f23ac0de96b239` |
| 41 | `theorem` | [le_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-hausdorffmeasure.md) | 548 | `result-track:6e6baa8960c5a91e11b7effb4e2dc193266eda538b28108e31b8d9699b4a822e` |
| 42 | `theorem` | [hausdorffMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-apply.md) | 553 | `result-track:ab097812a6cbebf41cad3d097852f6a30bffa0bbcb81e996de9757bea5b48988` |
| 43 | `theorem` | [hausdorffMeasure_le_liminf_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-le-liminf-tsum.md) | 562 | `result-track:6635d13721af9d75431e62fbba8d4297acb1b5540c18383c643fb81fd24f6485` |
| 44 | `theorem` | [hausdorffMeasure_le_liminf_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-le-liminf-sum.md) | 570 | `result-track:6b8a2d106fcc20d3330dee6c2cc50be5549ed2846cc14c4f137692f35e1d7e60` |
| 45 | `theorem` | [hausdorffMeasure_zero_or_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-zero-or-top.md) | 577 | `result-track:9dcfa90a0eec977108c1eca6a469b8d6c64c00428b1480e65f49fa79eb05da36` |
| 46 | `theorem` | [hausdorffMeasure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-mono.md) | 605 | `result-track:2c5e58b7a75d647739d11120863ad4ef4ed29fdff1fca1ef2d1bd00267be8eff` |
| 47 | `theorem` | [noAtoms_hausdorff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/noatoms-hausdorff.md) | 612 | `result-track:836110c38c1ce0f5621cec824779f0fd4b0f02446c78ccbbdb46144b5ca5d55f` |
| 48 | `theorem` | [hausdorffMeasure_zero_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-zero-singleton.md) | 621 | `result-track:2f5c27bc294755933f8ade3bd1fa7e34b0aae4c6392776ae84a0a917f556cf38` |
| 49 | `theorem` | [one_le_hausdorffMeasure_zero_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/one-le-hausdorffmeasure-zero-of-nonempty.md) | 645 | `result-track:102c42e13bbc28bfd0274fa244d973ccd25750db2786ab592e97fdf51a8abefa` |
| 50 | `theorem` | [hausdorffMeasure_le_one_of_subsingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-le-one-of-subsingleton.md) | 651 | `result-track:adf40b204bdfdaf04318a9b0a6ff222048ab233e0b889e2570e4da670705f461` |
| 51 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-image-le.md) | 682 | `result-track:517791c71cf60e9486ab79b92e8b2e368d0a8672341f51f0fb89788ff2fa364c` |
| 52 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-image-le-source-edition-2.md) | 727 | `result-track:9a2845da97a5fd240b8f09fc3811d7ba0b069ac765f0db8da5f30e144034e7e1` |
| 53 | `theorem` | [hausdorffMeasure_image_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-image-le-source-edition-3.md) | 739 | `result-track:b3ebb64f838209b29df7e14d57fd0793b1c8cd643fb1635dda045f88b3bb9b19` |
| 54 | `theorem` | [MeasureTheory.Measure.hausdorffMeasure_smul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/measuretheory-measure-hausdorffmeasure-smul.md) | 747 | `result-track:ea12adb03ecd1d23cd38cc487149f834ebef5359c681dd10f24f326d9b15e9fe` |
| 55 | `theorem` | [hausdorffMeasure_preimage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-preimage-le.md) | 770 | `result-track:3d297c9a5422c3f497cc32569d71f2245f9a12f64a83b90abdda65eeff4a546d` |
| 56 | `theorem` | [le_hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/le-hausdorffmeasure-image.md) | 801 | `result-track:a3778a0a106d5a5d6c51c37c217865f3aa624a606ceb34f1bced58787b1b3e6e` |
| 57 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-image-source-edition-2.md) | 818 | `result-track:fdf928340350d6d732ea2fc7e05e04c98c56fe7ee66132b81ce3be3b006860f6` |
| 58 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-preimage.md) | 824 | `result-track:1b5a46d23f90020efc04d5afb117641971576d61275d399bc74f6956b511ad05` |
| 59 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/map-hausdorffmeasure.md) | 828 | `result-track:6b67bbdf83180c4b371566d13a3985927ee745fef104983a46ab89b801bfbf01` |
| 60 | `theorem` | [hausdorffMeasure_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-image.md) | 839 | `result-track:8ad9c9cbc64dcca571574a1369be722182b43f4ba04b5e8a4287b40312646ae5` |
| 61 | `theorem` | [hausdorffMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-preimage-source-edition-2.md) | 843 | `result-track:de907a6469fd0ade7ab7dc84a9579956539ee13afc04218281d48cbd66ff880c` |
| 62 | `theorem` | [map_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/map-hausdorffmeasure-source-edition-2.md) | 847 | `result-track:6ffb57e985e7b0943ba9465ae616b74b44e9fa829a6b91fd73a8376a4b98f472` |
| 63 | `theorem` | [measurePreserving_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/measurepreserving-hausdorffmeasure.md) | 850 | `result-track:046d397db054b902cb342b641861a936630b0d94f31430998270c713d59d254e` |
| 64 | `theorem` | [hausdorffMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-smul.md) | 858 | `result-track:70aa184c41e3a7716d4f517c9356a4a9ef47b5f14c11193b2f336cf82fe6d96e` |
| 65 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/instance.md) | 863 | `declaration-track:5f4e3b6e89a25e0071ea8c89c4a77377bf9a6d6831da9d388c709d5a7abe4284` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/instance-source-edition-2.md) | 867 | `declaration-track:bc5acaf722432b88ff7ec149fbd6ac880e9a6e6851afd270bb5a42d48b52671e` |
| 67 | `theorem` | [hausdorffMeasure_pi_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-pi-real.md) | 877 | `result-track:cf2e9cb468c1b0414d9a1f456e9f510afaf913f6db4372c999c7ee986fb6a387` |
| 68 | `instance` | [isAddHaarMeasure_hausdorffMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/isaddhaarmeasure-hausdorffmeasure.md) | 967 | `declaration-track:b726d86d878973f870719ab9cca0fb5e0cfc4aa8f456ddb4494d55a002ed0b00` |
| 69 | `theorem` | [hausdorffMeasure_measurePreserving_funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-measurepreserving-fununique.md) | 993 | `result-track:bda6627ab9f35fb5f2177581d83672b092f2fb96f6baf026716fd3a40b4c3017` |
| 70 | `theorem` | [hausdorffMeasure_measurePreserving_piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-measurepreserving-pifintwo.md) | 998 | `result-track:4678dcd2fef7ff91943f532064d1e70a96d8856f7c9707c7760e0c1b55ea8603` |
| 71 | `theorem` | [hausdorffMeasure_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-real.md) | 1006 | `result-track:0eaa73a17b09fa5905b87a2b276868b9d6d85802ffc91f3e9c0ec784af34f001` |
| 72 | `theorem` | [hausdorffMeasure_prod_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-prod-real.md) | 1013 | `result-track:5a69428635726f5df4961744f0855122c073b53db1fb8050a45324798c0fb8de` |
| 73 | `theorem` | [hausdorffMeasure_smul_right_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-smul-right-image.md) | 1024 | `result-track:af3b465cc0695cd8d080b5aebfbd53c1560d95c72ec3758a2a41af87728f5495` |
| 74 | `theorem` | [hausdorffMeasure_homothety_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-homothety-image.md) | 1050 | `result-track:e925bacb25af2ed969a8a6c68b7589b36f34b66f9fd3b261f189ed6aea4e1e83` |
| 75 | `theorem` | [hausdorffMeasure_homothety_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-homothety-preimage.md) | 1060 | `result-track:400e5b73d22af40ab77527b078ecaadf30966d21125527917e9f824f0738e5e2` |
| 76 | `theorem` | [hausdorffMeasure_lineMap_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-linemap-image.md) | 1081 | `result-track:108fcf12d621612cf4a13dabe4d5221d920317f8761e07c7de43d2e3de0f8ba4` |
| 77 | `theorem` | [hausdorffMeasure_affineSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-affinesegment.md) | 1091 | `result-track:170b65fa10715d417416a825a43dba75d69f069878f5f0054aa3d6cca7c28146` |
| 78 | `theorem` | [hausdorffMeasure_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HausdorffNamespaced.lean/declarations/hausdorffmeasure-segment.md) | 1100 | `result-track:4b57b99269c2ff43c911fd84c51edc705aab2f290f82fc524ecf839a4a3419c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6081d9a11025caae578e44aec608d0b6efb0bdfd7f9ddc8d53aa3a1e847c199c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Hausdorff/Variant6c37c4472f74e02ef555013e2a1c665af92cd5775903cdf0bf8c13956600a922.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
