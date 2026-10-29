# Verification target: With Density Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f51eb0c740e3d8b909bd0983612432b488f8639",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f51eb0c740e3d8b909bd0983612432b488f8639`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean.json)

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
| 1 | `def` | [Measure.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measure-withdensity.md) | 47 | `declaration-track:7e433e91a9c89112314982ec2bf8f61977805d348f75d587d9db5e09a6b74da6` |
| 2 | `theorem` | [withDensity_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply.md) | 52 | `result-track:87bf2b38dc0d725039fd32edd1673c9cd5fc4a05dbf257c2cd4d8c0ac7bd79d1` |
| 3 | `theorem` | [withDensity_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply-le.md) | 56 | `result-track:b5ea16c5a0984afbf696c92b9d12459a6a5a994960ede66c43dbc479bfe217e6` |
| 4 | `theorem` | [withDensity_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply-source-edition-2.md) | 81 | `result-track:ab035f45f60dfcf4e5e6e8a138cc3cbe78b3d1c8367a46ab1729c352b0e5eafe` |
| 5 | `lemma` | [withDensity_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-zero-left.md) | 91 | `result-track:5b925dc84ccd79d21e6fc8181dc8069ab6cc0100697ad9ff3b966ea3ce1dd42b` |
| 6 | `theorem` | [withDensity_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-congr-ae.md) | 96 | `result-track:15245e0660a28f90f8883fb9d84caf6cdafa86d5c8f80711481ca6ab7f30913b` |
| 7 | `lemma` | [withDensity_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-mono.md) | 102 | `result-track:81cb167ad76f53a051e7f23395afaceac0c51f03ad59e625775807943cbefb4c` |
| 8 | `theorem` | [withDensity_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-add-left.md) | 109 | `result-track:1d095146cda09cfc7799c2ba8c17172bbeb06357fcbc4fe326773ef3ac2abbe1` |
| 9 | `theorem` | [withDensity_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-add-right.md) | 116 | `result-track:1a266dd9c533b7c6995c4689b25eb218c81e048197945829748f10cde524bd7f` |
| 10 | `theorem` | [withDensity_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-add-measure.md) | 120 | `result-track:e444d282121a7041aa70c62906982c899ff60d796843a6d587e40647084c5275` |
| 11 | `theorem` | [withDensity_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-sum.md) | 125 | `result-track:b565bf469a4c3ded95ff39e2c5d37219590cfc38d1d39019472f1bdeb2e1f688` |
| 12 | `theorem` | [withDensity_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-smul-source-edition-2.md) | 130 | `result-track:f5e5058322fd8b95566bd43202fcce399c909a14d2fcd122d068a82ffb704c53` |
| 13 | `theorem` | [withDensity_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-smul.md) | 137 | `result-track:4ea1b2b154c8352241e2a883e172c524db1806b24ff08068090e581b8fa2c19a` |
| 14 | `theorem` | [withDensity_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-smul-measure.md) | 144 | `result-track:aaadd1166152ad3c2a0a4468e105143d85da9b3017d8cae139b1b7ffc8b49b6c` |
| 15 | `theorem` | [isFiniteMeasure_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/isfinitemeasure-withdensity.md) | 149 | `result-track:dd338789a98ff87154676f147aeb48d951f55a54ff2592ad8fe62ef699a663a8` |
| 16 | `theorem` | [withDensity_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-absolutelycontinuous-source-edition-2.md) | 154 | `result-track:be310e0a03359873b1bd847bafdb04171d0aca1d159f481474bf59a118773860` |
| 17 | `theorem` | [withDensity_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply-source-edition-3.md) | 160 | `result-track:ab65fa72a5f60ba713f5389dab1bfa8748ca5c5b0aa3f29fe8caf157a502fdc2` |
| 18 | `instance` | [nullSingletonClass_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/nullsingletonclass-withdensity.md) | 170 | `declaration-track:f76945c0bd8314014e13c9e4abaceb19fc949fd1d308cb5fe4c97d8f4a43b3c2` |
| 19 | `theorem` | [withDensity_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-zero.md) | 178 | `result-track:3fc15504fae5b05ad14facd7d84c58ee25c1617fd0aee398ae7f1898793132bd` |
| 20 | `theorem` | [withDensity_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-one.md) | 183 | `result-track:e2cf27be4ceb20c24df0cfa8637488d2ca20f9b40e64dfdf384633ad5f100854` |
| 21 | `theorem` | [withDensity_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-const.md) | 188 | `result-track:25919b23b7c5590be49906df194914d7e031f9eeeb860bc9cfde84d67406ac74` |
| 22 | `theorem` | [withDensity_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-tsum.md) | 192 | `result-track:c11cb0b3ca8b01cf7760b829de786eea6bab657746a1e03cde50cbd705f80cec` |
| 23 | `theorem` | [withDensity_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-indicator.md) | 200 | `result-track:62e43ffcebb607812097cdeeb9cee5579abd341c4a0789c466b05823f1ae3588` |
| 24 | `theorem` | [withDensity_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-indicator-one.md) | 206 | `result-track:a21a7fd6d2e6bde4db456e0114df412440dc52127ca3cbc3ae129bf9f79d1823` |
| 25 | `theorem` | [withDensity_ofReal_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-ofreal-mutuallysingular.md) | 210 | `result-track:501822212573d92256caae0edc5fe185c8d3dc5264885b9308563791fd1bebb3` |
| 26 | `theorem` | [restrict_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/restrict-withdensity-source-edition-2.md) | 223 | `result-track:a8454ec6cd4d9d0f6c7f80a33151a6865149f161b351efc913cc77a42c8d02b4` |
| 27 | `theorem` | [restrict_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/restrict-withdensity.md) | 229 | `result-track:627002542e4572c3240d269c72d0eb3d97ba00f4c68b7cdb4641e16e0104b659` |
| 28 | `lemma` | [trim_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/trim-withdensity.md) | 235 | `result-track:d87b2f502d46feec64b0ca7f7f391d54c438f6a026add8dfc45db608fb171705` |
| 29 | `lemma` | [Measure.MutuallySingular.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measure-mutuallysingular-withdensity.md) | 242 | `result-track:15cfbd8e04eb5f4599a5e2240128d9592788d31449651391cadba9a602b3a8f9` |
| 30 | `theorem` | [withDensity_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-eq-zero-iff.md) | 247 | `result-track:055ddb68efca027beecca3007b379a1b976720af6cf20dca87afcff1c87a580d` |
| 31 | `theorem` | [withDensity_apply_eq_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply-eq-zero.md) | 253 | `result-track:5c593062066966a654a407e4d34e0335fd03d1fd058effc4ff13093cb6dd5076` |
| 32 | `theorem` | [withDensity_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-apply-eq-zero-source-edition-2.md) | 295 | `result-track:e91631fc5a3acada05c3a5d46e4e040b1c4e89608791b7ef7ff25443fde42e95` |
| 33 | `theorem` | [ae_withDensity_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/ae-withdensity-iff.md) | 299 | `result-track:df4e9b8624b2c213e02db0ce7b5d4122529f4d388b856f788615521268782494` |
| 34 | `theorem` | [ae_withDensity_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/ae-withdensity-iff-source-edition-2.md) | 306 | `result-track:e48d25f9ce532b0407a6b9ac80f4338716be7fc1c4315b9cbb07ae710b9a0968` |
| 35 | `theorem` | [ae_withDensity_iff_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/ae-withdensity-iff-ae-restrict-source-edition-2.md) | 310 | `result-track:e1fbf03fa9a34c0468fd6bcadb8d9a0d87b01a2aaf68e6eb7ae59b1cf8e4fab9` |
| 36 | `theorem` | [ae_withDensity_iff_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/ae-withdensity-iff-ae-restrict.md) | 326 | `result-track:4f88eb67e89795c04d2e945650e482d774c595dd35e61802974bf113497c898c` |
| 37 | `theorem` | [aemeasurable_withDensity_ennreal_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/aemeasurable-withdensity-ennreal-iff.md) | 330 | `result-track:480fba48c6f14686cc8ad90496566c3f7c6d1c39ecc94b864066641c815baddb` |
| 38 | `theorem` | [aemeasurable_withDensity_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/aemeasurable-withdensity-ennreal-iff-source-edition-2.md) | 360 | `result-track:f70d5be91b3da14ac8414d63fc1c8b30ed73367447ed688f3df9efda601d8375` |
| 39 | `theorem` | [dirac_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/dirac-withdensity.md) | 365 | `result-track:9c64986413c25d2501263c41fa1587400816cf7a908b75901b3665bf4a26d072` |
| 40 | `theorem` | [dirac_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/dirac-withdensity-source-edition-2.md) | 372 | `result-track:af248976d4d59a7c8c73ba371f82160f429f584c6b990fd82b81a5d94bba03ba` |
| 41 | `theorem` | [count_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/count-withdensity-source-edition-2.md) | 378 | `result-track:d78aecf97c12f23eba1c8e28354ae8c197db5a0b8a7ce889b52480e175702676` |
| 42 | `theorem` | [count_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/count-withdensity.md) | 382 | `result-track:1cbfef2adcf48b7c8cd97d0dd3896b96c7ef18c37fb16da86ad0b8f9ddab21ad` |
| 43 | `theorem` | [measurable_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measurable-withdensity.md) | 387 | `result-track:c669b86c41ac905ede0991ba689415feef52d52a0b8209dd6f000ca8b223dfbd` |
| 44 | `theorem` | [lintegral_withDensity_eq_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-3.md) | 406 | `result-track:9dacbd85996a31e489fed874ff9cf5d4d397d8d1f544f632f814f64d24170a98` |
| 45 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul.md) | 418 | `result-track:69268c0b9ad5a65567b1e093dcb9c813ea26d8c49c20784602ade52a9f974eac` |
| 46 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 427 | `result-track:926d6bd1f7ddbf0fb67fa0cf9ac4961023ee0b962da17684f142c5ea51c20664` |
| 47 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 458 | `result-track:9021d8bfb845dc7f5049369f737db05a461214b987e2bc351c1de1489d1c3ee8` |
| 48 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul.md) | 466 | `result-track:91169c8e9d15eb602d256a22c60129eca04170f55930116949d42f4438975a6c` |
| 49 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-lintegral-mul.md) | 471 | `result-track:2ceabb31629ef91e812af0d959d4f6d3f29b8c78a9e5399b5e01ce0e051e34ce` |
| 50 | `theorem` | [lintegral_withDensity_le_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-le-lintegral-mul.md) | 478 | `result-track:73a3aa84f6beb604b882d23aa787f78b47875ad288b58d4083a1375b1853ed3d` |
| 51 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable.md) | 485 | `result-track:c5948b35b4d51ed2201c891d859070fb42d5c25792be614f4b0df71593e8ebbc` |
| 52 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-3.md) | 510 | `result-track:e044c2a1de9810cddb709ed7b7e18d1950276cb75ba59db05d22c2435e8cee80` |
| 53 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable-source-edition-2.md) | 516 | `result-track:cd7dbce93385b9b842f0231f94530f5629fef5ae953a95f43df735cd423038c9` |
| 54 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable.md) | 534 | `result-track:574e104f3aec1d757d443591e47b2f510550c17f9a14e830b859a19f663d989c` |
| 55 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-2.md) | 540 | `result-track:deb88478dc783e70670e4b6f0251b893401dd453371372766f2ee8b320e3ff62` |
| 56 | `theorem` | [withDensity_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-mul-source-edition-2.md) | 546 | `result-track:8b57effaf12c60f0c01cfcd0de17993ecd18d1b20e582dfc35dd8cd23296bd1b` |
| 57 | `theorem` | [withDensity_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-mul.md) | 553 | `result-track:15eff46b86c0cc116ea7258548562e7c2ccdf128901d2287960a8046ddf7f2f4` |
| 58 | `lemma` | [withDensity_inv_same_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-inv-same-le.md) | 557 | `result-track:f01d91b57be350607a46967d0e757043a869a28f8065dd05c35841b42ace997d` |
| 59 | `lemma` | [withDensity_inv_same₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-inv-same.md) | 567 | `result-track:2253dc78363ce780f8d3a7c61c1f494c3336be89edddde4b28142a3e0252b6c0` |
| 60 | `lemma` | [withDensity_inv_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-inv-same-source-edition-2.md) | 577 | `result-track:c025d5be0b2e3f162629345ac30c950240e4c83e8d48dd4421000bbb6e1a93e2` |
| 61 | `lemma` | [withDensity_absolutelyContinuous'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-absolutelycontinuous.md) | 584 | `result-track:4774e4b22d4d65a3c6a901cdec88d63ff39d229cbd76aacc6cbabd8a64fe52c5` |
| 62 | `theorem` | [withDensity_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/withdensity-ae-eq.md) | 597 | `result-track:1d8cff6f8ae050c692a0535c74f9cc7425d2c5505d616f8bf3828d749d8fa137` |
| 63 | `instance` | [SigmaFinite.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/sigmafinite-withdensity.md) | 608 | `declaration-track:76911935b04524d07059314034e8653ee5dca831da86c305333626fe27600c5c` |
| 64 | `lemma` | [SigmaFinite.withDensity_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/sigmafinite-withdensity-of-ne-top.md) | 620 | `result-track:4ee96b47bafa190b4f1ce518062e36cfdcf61aada5721f3775184ba40b0aa94e` |
| 65 | `lemma` | [SigmaFinite.withDensity_of_ne_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/sigmafinite-withdensity-of-ne-top-source-edition-2.md) | 626 | `result-track:d9361c5dab1bc7354e95bae8304bd7ff163649a18edc14c2947137c38af042d4` |
| 66 | `instance` | [SigmaFinite.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/sigmafinite-withdensity-ofreal.md) | 630 | `declaration-track:dd202b60b6e108100d9c3858bb60c69dff07458c19e0c9b780224e3dfae353e6` |
| 67 | `theorem` | [exists_measurable_le_withDensity_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/exists-measurable-le-withdensity-eq.md) | 637 | `result-track:73e3c16aac78f7dca9bb042c02ad2985b685ab4b23c0f7ab982ab2c0a9bb2cef` |
| 68 | `instance` | [Measure.withDensity.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measure-withdensity-instsfinite.md) | 645 | `declaration-track:01c5c45d434b63f49f1f7781f8e923eeb3e916d2ec20bbe51df2221de0021149` |
| 69 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/instance.md) | 674 | `declaration-track:300d97ff2b725d97933067a736861b1a2453757549e6400eaa0e9c29ba146959` |
| 70 | `theorem` | [sFinite_of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/sfinite-of-absolutelycontinuous.md) | 681 | `result-track:1f1d425f4e405d3cd3ce87a4625ec3391ba582685a988a40b8061edd75d70e94` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 688 | `declaration-track:531e25209d9c7184b95eafb7a1a017204cc2f110e0f7d0523f9ba741b1c637ed` |
| 72 | `theorem` | [prod_withDensity_left₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity-left-source-edition-2.md) | 699 | `result-track:a4156978f27477c77c096b28a1db879c6450973fc383883a6139edb73954cdf1` |
| 73 | `theorem` | [prod_withDensity_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity-left.md) | 709 | `result-track:7eb5d49b7516207c7a3af220cd2ff0adfc2753ad00ae082d762115d4eb4b938b` |
| 74 | `theorem` | [prod_withDensity_right₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity-right-source-edition-2.md) | 713 | `result-track:e83f5f896574fe6f5e32d8b602a7c66d865d4bca1f3a8bcb56220d698308ede2` |
| 75 | `theorem` | [prod_withDensity_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity-right.md) | 723 | `result-track:1137ea5a698aab52b8f952bfee950de017d6c4e0159aeb28e629ddc9bd306cf5` |
| 76 | `theorem` | [prod_withDensity₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity-source-edition-2.md) | 727 | `result-track:d190027d70a75a73d3adbb4aee56e7c72957c7cb48a47d10b06111564aa6ab35` |
| 77 | `theorem` | [prod_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/prod-withdensity.md) | 734 | `result-track:00619b8cf92f29a7c7d2bcc3daae588611d3c8033b2680f404f411b4e2aa4383` |
| 78 | `lemma` | [Measure.prod_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measure-prod-smul-right.md) | 740 | `result-track:360820e663a9d821288c5e47d65a26602450147c92ed7a6cc3ed5ec2d8b657a6` |
| 79 | `lemma` | [IsLocallyFiniteMeasure.withDensity_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/islocallyfinitemeasure-withdensity-coe.md) | 752 | `result-track:a2d212efbdba9b86a0e5ed262387e958ad612ffce3bc3c28135e88bdbd6bb1c6` |
| 80 | `lemma` | [IsLocallyFiniteMeasure.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/islocallyfinitemeasure-withdensity-ofreal.md) | 761 | `result-track:796543bbee723b51a0200214f7847f40cffef3a7c891787754243acf895ae938` |
| 81 | `theorem` | [Measure.mconv_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/measure-mconv-smul-right.md) | 772 | `result-track:fa92dd83c5a5acff221085972af9ce21a1ec0ec356441f015cc34bf894fc7624` |
| 82 | `theorem` | [mconv_withDensity_eq_mlconvolution₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/mconv-withdensity-eq-mlconvolution.md) | 782 | `result-track:4efd421d6335db5e3762e029de63bb65317ed931b22d3b1fba8850d0b1676420` |
| 83 | `theorem` | [mconv_withDensity_eq_mlconvolution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityNamespacedPublic.lean/declarations/mconv-withdensity-eq-mlconvolution-source-edition-2.md) | 796 | `result-track:cc0525da7c16cc297a343ed996134d4ae4762d2b8068b2a059384d894fdb875f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03bba5f9760ab3caec0c6730462e55c2004a9a40145a2e019ed87d61bea3aa69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensity/Variantb6e85cb1d7eccf0ef29e52d27a98788dfdfcbe02c2a74162a94065d1c0a262c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
