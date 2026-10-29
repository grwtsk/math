# Verification target: Stieltjes Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6297eeab2151062d2cbae140e704e87882f614f9`.

Source path: `GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Iotop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/iotop.md) | 64 | `declaration-track:8b937af4735f8abed1201e85a9affe60e740b9e74fb1656a15d02beff50cf7e5` |
| 2 | `lemma` | [Iotop_subset_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/iotop-subset-ioc.md) | 66 | `result-track:9ebcc81e15c9ea8332a35f177396bbfae9f1926740c6e90f8eba4e7688ecc7d4` |
| 3 | `lemma` | [Ioo_subset_Iotop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/ioo-subset-iotop.md) | 70 | `result-track:cec7f981a556a4a65818d04b0dae5c0cf58d6ca5b9b8478edc8e56d5b53cc046` |
| 4 | `lemma` | [isOpen_Iotop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/isopen-iotop.md) | 74 | `result-track:88497980aaf32ba896d6c61fc1d572cce9dd47a5e53924d231422f032f13561c` |
| 5 | `def` | [botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/botset.md) | 82 | `declaration-track:ac0823f4d8159da9748b9b2fa8b8d88dd5ae14864337dffb0cb1dd937237d7c6` |
| 6 | `lemma` | [Ioc_sdiff_botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/ioc-sdiff-botset.md) | 84 | `result-track:d4071b825ed66af5d383fb63a9c3c1c34f7e2c1849ad9ee5521fec870b43ddc5` |
| 7 | `lemma` | [notMem_botSet_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/notmem-botset-of-lt.md) | 91 | `result-track:ebf05d9d260b00f62c9ef6ed0884c8a6cc9840537e9a93b8729e4ed8c03d36e1` |
| 8 | `lemma` | [subsingleton_botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/subsingleton-botset.md) | 95 | `result-track:fb7ff6f69ff63eb018167a6f094417b222768151f887fa4280b47b84ff6818d6` |
| 9 | `lemma` | [measurableSet_botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measurableset-botset.md) | 98 | `result-track:93e77b582e3dc8c3cbbc17344eb7cce15e1226dc95aca6eaa983e8ae7b03fa2c` |
| 10 | `lemma` | [botSet_eq_singleton_of_isBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/botset-eq-singleton-of-isbot.md) | 102 | `result-track:0136ad60aa2c7bf21a28afe2b718e91473a5cd42e7e73a40fd57acf25c9470c4` |
| 11 | `structure` | [StieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/stieltjesfunction.md) | 112 | `declaration-track:5a1921222b17a1791da231f15d882b600149085b7e2ef2e515d7038d35199077` |
| 12 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instcoefun.md) | 126 | `declaration-track:6fbfcefa31a6c75b460444ed8d2a7049a3ae4c5d7d571de5dce10552aaf8c3c1` |
| 13 | `lemma` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/ext.md) | 131 | `result-track:a042deaa8e4227694e6f549f462e2b47249de2492621759c110e0c7713fd4ee5` |
| 14 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/mono.md) | 137 | `result-track:d7cd8b030ef83cd80d25d5e755aa24d91c861b365c7e9198d9b2479a53f22873` |
| 15 | `theorem` | [right_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/right-continuous.md) | 140 | `result-track:eaf82751745c11badefb385e05610e026491d54333287427256a9fada1ddd019` |
| 16 | `theorem` | [rightLim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/rightlim-eq.md) | 143 | `result-track:4c99e5079c08a8fc5dee13138dec33b8d7065a1db713c094af280840c39abe13` |
| 17 | `theorem` | [iInf_Ioi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/iinf-ioi-eq.md) | 148 | `result-track:3dccfccb01f28ea42f3f7506973a4e1dc63db3d841cbdcbb1b3069a46c533c6c` |
| 18 | `theorem` | [iInf_rat_gt_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/iinf-rat-gt-eq.md) | 153 | `result-track:fd3582b9f9ccac2cd701af02dce4ff486009f181af717eb497d93fce0b6d56ba` |
| 19 | `def` | [id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/id.md) | 163 | `declaration-track:0e34e80aa04e6944027f38f6c87f69aea17723aa7ff3fdcda9aae601cd47af1b` |
| 20 | `theorem` | [id_leftLim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/id-leftlim.md) | 169 | `result-track:d8e63e1a0308e400ccee451e2a8b1990f67e35d310bde3357c718c37cd8d23ea` |
| 21 | `def` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/const.md) | 174 | `declaration-track:e499f77973ded9c9debc453d8ea2c6c126cbea795911c75fcbc073ae50dd1ef5` |
| 22 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instinhabited.md) | 179 | `declaration-track:7a95dcb7dd00e9842763e838df29dc246b06491e9cd3e4b3ead3ac7459400f33` |
| 23 | `lemma` | [const_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/const-apply.md) | 182 | `result-track:17ac55aa07f1a94b8786cd89307833f91e1294da376ddd26f0024775f59dc353` |
| 24 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/add.md) | 185 | `declaration-track:0b0b7f41c5091c3419f7fb01fd3626a787a8bedea149152a177efe879b5d8e9f` |
| 25 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instance.md) | 190 | `declaration-track:24d4bc4274a2c560a97f65cfab3165e9019c8bb4049f4d3b7af8f98535f25f6d` |
| 26 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instance-source-edition-3.md) | 196 | `declaration-track:61c2ad43cfd13adca3c1949ae5aee36f564127514aa48698713cf560967e9fe9` |
| 27 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instance-source-edition-2.md) | 202 | `declaration-track:608878d2b50d3bf32758bcdb50bf49ccff3c0fb75cbfcfd38bf802ebd76e43a3` |
| 28 | `lemma` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/zero-apply.md) | 214 | `result-track:9540749900929858772f203f973d53424eebd0aea2234159a000856d0d1cc1e7` |
| 29 | `lemma` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/add-apply.md) | 216 | `result-track:b80e4e7b41710bbed208138bbd190e061aadd69dfb7f644bbc5d64732a61a5cc` |
| 30 | `def` | [_root_.Monotone.stieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/root-monotone-stieltjesfunction.md) | 220 | `declaration-track:9d7fc31bf48e2568f31aa02b0507599926943b42b3b79f0b98dadff110bf0f79` |
| 31 | `theorem` | [_root_.Monotone.stieltjesFunction_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/root-monotone-stieltjesfunction-eq.md) | 250 | `result-track:1d2f9a1cc594888c624a29f01c9ef8fb940ec0461929b528561b06e535cf058a` |
| 32 | `theorem` | [countable_leftLim_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/countable-leftlim-ne.md) | 255 | `result-track:357527ee0d70300fc830f8a5aa94a131b2f392b0291b5cae56f138feae4a5942` |
| 33 | `def` | [length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length.md) | 268 | `declaration-track:0caa13f701d79f4326314323ca161b5b48fe58080891a968a13cfdc8a657ab7b` |
| 34 | `lemma` | [length_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-eq.md) | 275 | `result-track:2381b6a8c6455781942734e68e0ff7da37daa02e45df198a9c1ddd2ae894aa6b` |
| 35 | `lemma` | [length_eq_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-eq-of-isempty.md) | 279 | `result-track:771ed61cf02bf4e91ae9c95eb009890e97f99cd4d7a862b41da2b2c90d0bb00e` |
| 36 | `theorem` | [length_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-empty.md) | 283 | `result-track:8ff6970446458777465ec8a94905b57f289d80b014e3dc21193dc4bd37e3fdfd` |
| 37 | `theorem` | [length_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-ioc.md) | 291 | `result-track:891be1dea55b2448bd06c7101c4daec1e16c477ee737113ce2b66352600e2679` |
| 38 | `theorem` | [length_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-mono.md) | 305 | `result-track:aa864ac2aca61c5b69527d8a449c38a1183226225a17f90555ee35b7ba9adc93` |
| 39 | `theorem` | [length_sdiff_botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-sdiff-botset.md) | 311 | `result-track:c0910c5630092c0a718c3d0bd2d7af927e15ff665f21a09d652cf3e5f7395309` |
| 40 | `def` | [outer](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/outer.md) | 321 | `declaration-track:950f9f1f262adce7a9f04faaf3cc22fae64d9a88d5b1e145d821e41409b8b52e` |
| 41 | `theorem` | [outer_le_length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/outer-le-length.md) | 324 | `result-track:1cde9a94b07f7d6c5161e07fc02b07f828fc013cd4ae05f5911ce3cb1c12f667` |
| 42 | `theorem` | [length_subadditive_Icc_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/length-subadditive-icc-ioo.md) | 336 | `result-track:28db2878fb0a6bd3c658bb4864da6fd2d0d0ac22ebbabb1c1a1a459adf9a95aa` |
| 43 | `theorem` | [outer_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/outer-ioc.md) | 369 | `result-track:df7f189f46850f162f499ffe102afecc070393ebc7413ad04ecd9a03d39c8a66` |
| 44 | `theorem` | [measurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measurableset-ioi.md) | 449 | `result-track:068ba2d2eda978880d5b1de914f80f58c14f2fbc9fe6f58492cfd5903c5ff551` |
| 45 | `theorem` | [outer_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/outer-trim.md) | 470 | `result-track:957964b48d9f86f8e64b8cad7a0ceb84259eb431c080283d1a8da91ed542f44a` |
| 46 | `theorem` | [borel_le_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/borel-le-measurable.md) | 508 | `result-track:26c1253c725d62025e58d60d26401221805d7cd8a4b8aafc726b3c4bb094846a` |
| 47 | `theorem` | [measure_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ioc.md) | 528 | `result-track:5723d759440a23c97608549d371839ad48ec4e0201f8467a337e315b0f5e9eab` |
| 48 | `theorem` | [measure_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-singleton.md) | 533 | `result-track:d8580caddb3c535a49933c02d0a31ba8678ea6719783239104c9686f7513fd28` |
| 49 | `theorem` | [measure_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-icc.md) | 572 | `result-track:cc128dbb6cf1136a166a4c36d31e36526d1d807f8a934b30ebcf0edd1099f1b9` |
| 50 | `theorem` | [measure_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ioo.md) | 582 | `result-track:8a5ec8f98c98931488be879ee64bc2eb03dd1dde4222e52d8b967df0280e7b67` |
| 51 | `theorem` | [measure_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ico.md) | 598 | `result-track:94221f7734928c582c541dfc15ddfe5508329336bd0a3757690b7a78f2a6e484` |
| 52 | `theorem` | [measure_botSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-botset.md) | 608 | `result-track:bb9cb888b7e39e4ef07b9543ed91c14533ecaae37c196447989ce0a53363cf0b` |
| 53 | `theorem` | [measure_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-iic.md) | 613 | `result-track:8b843ac6fbab8fbd5e51aa43b1ce5904b3467c02d340738bfd39b775d479d651` |
| 54 | `lemma` | [measure_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-iio.md) | 625 | `result-track:e205b2b95575f1948e8c0cc530b361c539b7b74daffd1df1b60b37181dc3faef` |
| 55 | `theorem` | [measure_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ici.md) | 632 | `result-track:0efbae5e35f0899b610ec1f303eb952ac99783351d60f478557a75d47180048c` |
| 56 | `lemma` | [measure_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ioi.md) | 643 | `result-track:75b380c44019e2eb76b740a5ebab68b5c701817b0e6b8ffd315aa0f7fc29492b` |
| 57 | `lemma` | [measure_Ioi_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ioi-of-tendsto-attop-attop.md) | 649 | `result-track:113bd8dbea1c56e958b91ffe81582c1c67905fcd144d37d67ca378e9795451be` |
| 58 | `lemma` | [measure_Ici_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-ici-of-tendsto-attop-attop.md) | 657 | `result-track:db59bb79d29ba0b7d03d12c44d6b9578c85e4b835df0f261249da734a307d0f7` |
| 59 | `lemma` | [measure_Iic_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-iic-of-tendsto-atbot-atbot.md) | 662 | `result-track:71b47aa13d0b17fcf6580519e6f7845703d7b6de35b98b5ade9bb21b814b6314` |
| 60 | `lemma` | [measure_Iio_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-iio-of-tendsto-atbot-atbot.md) | 670 | `result-track:d2c71116760e61bdf538fc6ace3cc27c5b7482d616d6818727096c9f21da5098` |
| 61 | `theorem` | [measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-univ.md) | 681 | `result-track:3830c06c97cb5ad0b7fdba6338db4e4ab1b7fc48546b1b9e041a8bd4b88a3e28` |
| 62 | `lemma` | [measure_univ_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-univ-of-tendsto-attop-attop.md) | 687 | `result-track:e5fefd4bddec285fd8ab925728af267e207167204293345d64bf10866c8579f7` |
| 63 | `lemma` | [measure_univ_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-univ-of-tendsto-atbot-atbot.md) | 693 | `result-track:10d8eee0cbf87bfdb1306c9156c968fec1aff9c03b39db1aaf3b4eb8f24c7af3` |
| 64 | `lemma` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/isfinitemeasure.md) | 699 | `result-track:e44fc39cbeeb50d5e3ed932c42db4341150d43b0b3cb895bb3d4404058ee8a98` |
| 65 | `lemma` | [isFiniteMeasure_of_forall_abs_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/isfinitemeasure-of-forall-abs-le.md) | 707 | `result-track:e69b3c0020f13beba441eea2508eb1a4b3faf21641abbe082de48a3408976baf` |
| 66 | `lemma` | [isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/isprobabilitymeasure.md) | 723 | `result-track:72191f06026f996b574ff32e2a30cfdba3c0f9822136ed4f29972610b03d52da` |
| 67 | `instance` | [instIsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/instislocallyfinitemeasure.md) | 727 | `declaration-track:f91035721ff7dfaa16d6b6ebddc24861cf8dd5bf2d9e13bb7359eb495f3a49a0` |
| 68 | `lemma` | [eq_of_measure_of_tendsto_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/eq-of-measure-of-tendsto-atbot.md) | 733 | `result-track:3cc4f3c5861d581c189dd4344e42560d9b596328fb18b06d57ba725a813d490e` |
| 69 | `lemma` | [eq_of_measure_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/eq-of-measure-of-eq.md) | 745 | `result-track:a7b8c3a00acf7ad51bfd3c37fa841b608c965e93d1c2f214f426b0de5e2cc2bf` |
| 70 | `lemma` | [measure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-const.md) | 768 | `result-track:8820739895f8dd826002c7da816a1d291945c07b9cca7c3b55625f9714a6b6f7` |
| 71 | `lemma` | [measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-zero.md) | 777 | `result-track:741a9dd4e9f0df64ae351d2fb561f1f55476b3ba3693978f0b2af728203b6def` |
| 72 | `lemma` | [measure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-add.md) | 780 | `result-track:5ade32863ba88de19d1fb7e1b8d19350822adc278c63773caecf1772d31b6b2a` |
| 73 | `lemma` | [measure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesPublic.lean/declarations/measure-smul.md) | 793 | `result-track:6d2c735f05402eef842ef1a02e7c5b5817ed32ea7a72d304387879d9fbdc8171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=008ab18fc075588fcf4691360d153eb5edfbdc6837b9fb623a49a358ff236777 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
