# Verification target: With Density Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5614894732293f9dbc288ad091284a54d909a3f4",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5614894732293f9dbc288ad091284a54d909a3f4`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean.json)

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
| 1 | `def` | [Measure.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measure-withdensity.md) | 39 | `declaration-track:34b20f10ee088e570b8f1d878095985f2e30c8ca7b5d109f596b91b73377f71d` |
| 2 | `theorem` | [withDensity_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply-source-edition-3.md) | 44 | `result-track:fd5366e84a22f2aea4cfe8f70a8db081b748bd4054bdcffc348b1f7846236449` |
| 3 | `theorem` | [withDensity_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply-le.md) | 48 | `result-track:3eeab19f6da58c3d417eb19808a43fd568c724ae1e48412b37c86d0dceb03000` |
| 4 | `theorem` | [withDensity_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply-source-edition-2.md) | 73 | `result-track:3cb92d490400149642cc50284b76581fc50f75ecda4928a115e19a6a572bc5a2` |
| 5 | `lemma` | [withDensity_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-zero-left.md) | 83 | `result-track:e50972ce32a5d0131656886cc9b87c047161567c8d41317dbb46311f6e734fab` |
| 6 | `theorem` | [withDensity_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-congr-ae.md) | 88 | `result-track:879a1dd50b5598bc55ea517b3fe5fc8268cc02f26e567c00aaf6c860fd26137b` |
| 7 | `lemma` | [withDensity_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-mono.md) | 94 | `result-track:c124e0e2e92a7829f6b820d95a087132c2e9b1d0fe6924f9a3872754a877b4fc` |
| 8 | `theorem` | [withDensity_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-add-left.md) | 101 | `result-track:894a2516b6288c10fd3b58af518e111f10ea4ccdc9261a24e9061513c4eb659f` |
| 9 | `theorem` | [withDensity_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-add-right.md) | 108 | `result-track:41772f244f5764d7b5744e01f99578029b689fb753ae418336a7a97fe549c792` |
| 10 | `theorem` | [withDensity_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-add-measure.md) | 112 | `result-track:a1a1fe5369ed5c5e4a9289b988034a0d76920ce082182bae660d41a59cc044a5` |
| 11 | `theorem` | [withDensity_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-sum.md) | 117 | `result-track:507ffce9b69569e94d6c2f1b13023043234334a4982d5933bb477050c94a8885` |
| 12 | `theorem` | [withDensity_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-smul.md) | 122 | `result-track:7fb02dc801df11561bf5227177338a1d063db3bf398a44c4d8eadb0acaf60f44` |
| 13 | `theorem` | [withDensity_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-smul-source-edition-2.md) | 129 | `result-track:c51fd21d98046cbaf3156363606248f66b697c21e2c6f2694d0cca6e89480eeb` |
| 14 | `theorem` | [withDensity_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-smul-measure.md) | 136 | `result-track:f35b1d10ab4db7918fbe7e75b19510c0722c86ba9b9fbc850b20a9dc3fc3346e` |
| 15 | `theorem` | [isFiniteMeasure_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/isfinitemeasure-withdensity.md) | 141 | `result-track:d7b19b4fd46a136bbb9aedec2ff962f8a1375e449028bf2efa75bb82c69f7708` |
| 16 | `theorem` | [withDensity_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-absolutelycontinuous.md) | 146 | `result-track:098b8fc58f05ba66466f1e8bb3a127501954785116d3d7c4f66faa50b2e0d102` |
| 17 | `theorem` | [withDensity_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply.md) | 152 | `result-track:33cbf3da002bc26d05dae8cca8e2b293fefa75283ce7bf324e29db1440e176e0` |
| 18 | `instance` | [nullSingletonClass_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/nullsingletonclass-withdensity.md) | 162 | `declaration-track:1bbf760029b544bdbe7fabaf7eda2a91a12342668c82faf0b7d6d6b32b8744b3` |
| 19 | `theorem` | [withDensity_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-zero.md) | 170 | `result-track:8284247b220b01675e71000baa736e79f9afdab052f9aea3763bcc3bc108d07f` |
| 20 | `theorem` | [withDensity_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-one.md) | 175 | `result-track:216cab6e5d5f26c8a0369aab0da3be7a26de02a893c962c303241cf062bdede2` |
| 21 | `theorem` | [withDensity_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-const.md) | 180 | `result-track:013facb1ab31ddaba47a822bddfadd85f563dc0a6f0a59df0c704023bd10e32f` |
| 22 | `theorem` | [withDensity_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-tsum.md) | 184 | `result-track:a80b3e6acceb6be077b146bc09a6af58fcadfe8b1854e56f68f69884a787f217` |
| 23 | `theorem` | [withDensity_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-indicator.md) | 192 | `result-track:c9fda32243c28c597d7a75598a10325a9a9eceafc37f42a0d2ebcdb7d7a706eb` |
| 24 | `theorem` | [withDensity_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-indicator-one.md) | 198 | `result-track:fb36f4f0babf751f6fe9fa28e754a224f82cccec8dbec90809d92b98e970cba4` |
| 25 | `theorem` | [withDensity_ofReal_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-ofreal-mutuallysingular.md) | 202 | `result-track:c7d00c697d23173af8509e08ef7100d5c991c565e4d3d4bda6377c7ac56f6f0b` |
| 26 | `theorem` | [restrict_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/restrict-withdensity-source-edition-2.md) | 215 | `result-track:9ccbd68021ea22dd95932fd5573ee9e26c5948cf36c1ca6ff43f6619cdc31870` |
| 27 | `theorem` | [restrict_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/restrict-withdensity.md) | 221 | `result-track:8c9d5dbb1b4599933bafe11467182cf46aef51fb0d50a76f717a60e5291087f7` |
| 28 | `lemma` | [trim_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/trim-withdensity.md) | 227 | `result-track:0cc8f7474a06793254f3328ad6a6787b574418205da746de8295bfdecce32b41` |
| 29 | `lemma` | [Measure.MutuallySingular.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measure-mutuallysingular-withdensity.md) | 234 | `result-track:7db51d3ab10e7f5a1a86e7700ffccdd266713113936145c7d96ab1a06adee9af` |
| 30 | `theorem` | [withDensity_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-eq-zero-iff.md) | 239 | `result-track:fe3393f7406c2017a8efd556f206a69f4c9abf497ddcf8e2977ebaa410f596f5` |
| 31 | `theorem` | [withDensity_apply_eq_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply-eq-zero.md) | 245 | `result-track:76335168d8bcc25eaf3f46591d1070efce6e4d75a1fac1da049ade300174a49f` |
| 32 | `theorem` | [withDensity_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-apply-eq-zero-source-edition-2.md) | 287 | `result-track:b555a8d23c7a923167f9e11190819f4ae3da380158d953653f71ea5c9080b0cf` |
| 33 | `theorem` | [ae_withDensity_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/ae-withdensity-iff.md) | 291 | `result-track:16fef9a3624edd3e142f72e50d9b108c8e1e883568abafd1fd233d8aa82e412f` |
| 34 | `theorem` | [ae_withDensity_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/ae-withdensity-iff-source-edition-2.md) | 298 | `result-track:bd8873768e610cf26fa6df884023887525666241f34c7f0c8eafabde12b384ff` |
| 35 | `theorem` | [ae_withDensity_iff_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/ae-withdensity-iff-ae-restrict.md) | 302 | `result-track:49e5192e5af3e6d0f1a9cd896a09cc13106ba54bcb7d78d9c0ee13a567a204bf` |
| 36 | `theorem` | [ae_withDensity_iff_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/ae-withdensity-iff-ae-restrict-source-edition-2.md) | 318 | `result-track:ab50835d2e1c1e53be9b4f4c519ac5a239d8b38a66e2dd20a3194f9abc8f5e38` |
| 37 | `theorem` | [aemeasurable_withDensity_ennreal_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/aemeasurable-withdensity-ennreal-iff-source-edition-2.md) | 322 | `result-track:f29be0758a8ad96aa0ba146512b37dfc46bb035801f339557c505c87959d3906` |
| 38 | `theorem` | [aemeasurable_withDensity_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/aemeasurable-withdensity-ennreal-iff.md) | 352 | `result-track:080afd5c0020a9702b72b0266ea69eea06a665af5c053a5988f71dc6513113c0` |
| 39 | `theorem` | [dirac_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/dirac-withdensity.md) | 357 | `result-track:bdc53c44d4f3eedbd4d5320dde470c88853602401e5d00e46192fae5f2365048` |
| 40 | `theorem` | [dirac_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/dirac-withdensity-source-edition-2.md) | 364 | `result-track:da9f50dfe176fb7a86c429bb3f26c55d642845c87b63f54342cf75406cffb0e6` |
| 41 | `theorem` | [count_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/count-withdensity.md) | 370 | `result-track:0284e9fd869f25bd52cd68217a6260abfea1da7f153f0a31c05392549bb8a17e` |
| 42 | `theorem` | [count_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/count-withdensity-source-edition-2.md) | 374 | `result-track:74c5fb5a3b2d6986f4b1e568d95d11c88d494f8416b0d0fccb5a02ebdc56e309` |
| 43 | `theorem` | [measurable_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measurable-withdensity.md) | 379 | `result-track:058d00a3d2e081f4339972d2a7dbb27c364fba126a40e65e7ac58106d7b815da` |
| 44 | `theorem` | [lintegral_withDensity_eq_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-3.md) | 398 | `result-track:908abe98c503f20bf78883f15d3679d248c53f2614d1a5f6552586b7dc19e11d` |
| 45 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul.md) | 410 | `result-track:bf510b421e7ee465e235ea5fc507035c853ac59daa3ae00e240abfee491831e8` |
| 46 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul.md) | 419 | `result-track:5c515315d02e551552b003b3d03286f72e89e553119cd045b6a1a11c8b86e974` |
| 47 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 450 | `result-track:aab002c85ca4d55ffe94af0bee0795dfe32dbc1ad09788e417cf85d244f59a18` |
| 48 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 458 | `result-track:6d73937046ebd07420d2c3474980d3524088de1fe3c1f0ab80cdef9b56665f33` |
| 49 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-lintegral-mul.md) | 463 | `result-track:2efc56a149543acfe316010d1c61af03d2721c4202d49169b498ed0ef76e7b5b` |
| 50 | `theorem` | [lintegral_withDensity_le_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-le-lintegral-mul.md) | 470 | `result-track:ac0680d19fea14fb1de250219f73a6f168404da3638577213ef63fdddf266b74` |
| 51 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable.md) | 477 | `result-track:30723e43fd1e129270c1046da0e70a7066d9b4113a71c9d8d5e48eeee966b0e4` |
| 52 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable.md) | 502 | `result-track:56fa48fac1071c5ab58ebf8bd2f988bf944aa5104ed831d487001ebfbdff5061` |
| 53 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable-source-edition-2.md) | 508 | `result-track:4a4a32095698d3a6c7573c67a49315eccf561af13895aaab30bd20cf3409978b` |
| 54 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-3.md) | 526 | `result-track:ecc4c6f127d75b66b7d60ea1394897eb7a01377878230fdd5ab84190d8306070` |
| 55 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-2.md) | 532 | `result-track:5b130bb07ef64bac4cfe97af7f22d03d1ea76060d5aadcc6d6901d2f277b5338` |
| 56 | `theorem` | [withDensity_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-mul-source-edition-2.md) | 538 | `result-track:3e137ba3741e3359e5cf744ff688c78d19e6d8fa2857d589a90cfb75729e66fb` |
| 57 | `theorem` | [withDensity_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-mul.md) | 545 | `result-track:1e7a86dda0d450d1a9401a937b1aa23973d2125e412725824c7f031c362e17c9` |
| 58 | `lemma` | [withDensity_inv_same_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-inv-same-le.md) | 549 | `result-track:bfdc072f864feb0fb85fb8b0753438f31c4ff4b3abd73c655d761f5ded8831f2` |
| 59 | `lemma` | [withDensity_inv_same₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-inv-same.md) | 559 | `result-track:923f532f183c73924057b2cc63f18bcdd54519e830a49cd6295c7b4d4e6feb21` |
| 60 | `lemma` | [withDensity_inv_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-inv-same-source-edition-2.md) | 569 | `result-track:c800186525ca9fd862472df45024452675329ab801ce2dc08a1b17077f921380` |
| 61 | `lemma` | [withDensity_absolutelyContinuous'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-absolutelycontinuous-source-edition-2.md) | 576 | `result-track:ea5681eefecef30bc40e0931b83348c0bd5968c3f81bee03395c7895f268060a` |
| 62 | `theorem` | [withDensity_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/withdensity-ae-eq.md) | 589 | `result-track:b6e8d1a03a122194cb8ed4ff26cea11ddab27241265a6591fec64cb64990d420` |
| 63 | `instance` | [SigmaFinite.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/sigmafinite-withdensity.md) | 600 | `declaration-track:275e9882a8fcbb81051b1aeb52d5870703a4e17fc2ff261cce6cf1e6da1c9089` |
| 64 | `lemma` | [SigmaFinite.withDensity_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/sigmafinite-withdensity-of-ne-top-source-edition-2.md) | 612 | `result-track:e677bb01e03285b69aa88596f8bf5016d78154bb440ae9052402fbeb966be6a0` |
| 65 | `lemma` | [SigmaFinite.withDensity_of_ne_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/sigmafinite-withdensity-of-ne-top.md) | 618 | `result-track:4725db1a4fe3519aff30a5ef59c3ec10065028903e72386b093b39e15f2223a6` |
| 66 | `instance` | [SigmaFinite.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/sigmafinite-withdensity-ofreal.md) | 622 | `declaration-track:41fac8b8968cb3722c969b553c322f9593a34fefaaf59ac25ef21d0e8013d3f3` |
| 67 | `theorem` | [exists_measurable_le_withDensity_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/exists-measurable-le-withdensity-eq.md) | 629 | `result-track:2ccfd4261278839688bc4365f4ead64b55e369f7219d6f2aeb42484a74a22a7b` |
| 68 | `instance` | [Measure.withDensity.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measure-withdensity-instsfinite.md) | 637 | `declaration-track:767a17db97e23672a45f601ba9190575ce8625daf80692a4be60e634612efb05` |
| 69 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/instance.md) | 666 | `declaration-track:153a3a177b12b17b98134c845bd70b7639c81caf57ddbf3087dd95607be80a40` |
| 70 | `theorem` | [sFinite_of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/sfinite-of-absolutelycontinuous.md) | 673 | `result-track:56002e7faab371ce1f6c5f1afddd4a5d143ac5ec45af21916fd3e7dc0dc2aea2` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/instance-source-edition-2.md) | 680 | `declaration-track:b2529bbeaf6b25a361f86b26370982929ec861599e72d86d795630091fff11f1` |
| 72 | `theorem` | [prod_withDensity_left₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity-left-source-edition-2.md) | 691 | `result-track:93d68490b4be3850d879be8ac2e41ddbd5429e4c0c9b6a7bf6f66f61900813d5` |
| 73 | `theorem` | [prod_withDensity_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity-left.md) | 701 | `result-track:2db210cfa7b8d09be7d94e0e1b46000be480ab7d875ede16773ce4db2beee4cc` |
| 74 | `theorem` | [prod_withDensity_right₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity-right.md) | 705 | `result-track:2800bfba3b322700d6fbf369442be161a83bf12b980b188996efe769082834e6` |
| 75 | `theorem` | [prod_withDensity_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity-right-source-edition-2.md) | 715 | `result-track:88b66749fd21e432c2c0f14c4505979bf50e5e78836061938811f41f317f9427` |
| 76 | `theorem` | [prod_withDensity₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity.md) | 719 | `result-track:c4cc2422c5ac13b876f6d88a66b57b6a3389bd1f4b4a598e9cd00bb5706b6ddb` |
| 77 | `theorem` | [prod_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/prod-withdensity-source-edition-2.md) | 726 | `result-track:cb1422b026d953679164b9737bf7e09d6754c9678a9ad722d3b1d17b4d4bfe86` |
| 78 | `lemma` | [Measure.prod_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measure-prod-smul-right.md) | 732 | `result-track:b3dcaa87fd902a3d2bfd5c0fc58c06ed2c9b18542fe83f30db96d01c01d1d590` |
| 79 | `lemma` | [IsLocallyFiniteMeasure.withDensity_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/islocallyfinitemeasure-withdensity-coe.md) | 744 | `result-track:6868a102195dbd23f9a2ca64567e03bec812339616124e46bdcc71e6fd791ba6` |
| 80 | `lemma` | [IsLocallyFiniteMeasure.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/islocallyfinitemeasure-withdensity-ofreal.md) | 753 | `result-track:0346322229350fa9afc5ec13990b7864a608ec25ebbe99aa21d804cc4ab94361` |
| 81 | `theorem` | [Measure.mconv_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/measure-mconv-smul-right.md) | 764 | `result-track:af5b2e3498056f05ff961ac5a3491628b81703f138bf64f0d069604fa61f43cf` |
| 82 | `theorem` | [mconv_withDensity_eq_mlconvolution₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/mconv-withdensity-eq-mlconvolution-source-edition-2.md) | 774 | `result-track:c8b3fdcb373e52ffaee01456eeee15ac2549a7f4b10f907fe8d0a2fa4a73201f` |
| 83 | `theorem` | [mconv_withDensity_eq_mlconvolution](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityPublic.lean/declarations/mconv-withdensity-eq-mlconvolution.md) | 788 | `result-track:2dc314ac9d3ad696579412f139f366245481232d061bbd380d5c5ab438459971` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6a3a682c91ce9a5f691c4c530efd9009ccf2d85ac0d08d27de761676489a340 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
