# Verification target: Interval Integral Fund Thm Calculus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d35e2d370a83108bc2aeea28317fc627be1e5de",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d35e2d370a83108bc2aeea28317fc627be1e5de`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Measurable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.FundThmCalculus` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.VitaliCaratheodory` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FTCFilter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/ftcfilter.md) | 196 | `declaration-track:0b93c23f2fd4628b1077d23489d4f1c470db01de8a1eebd9b716155886a92ff2` |
| 2 | `instance` | [pure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/pure.md) | 205 | `declaration-track:e4b65fcf87c9049bf8b8591361883f75a1cae19c52e36303bfecc64fd332bae0` |
| 3 | `instance` | [nhdsWithinSingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdswithinsingleton.md) | 209 | `declaration-track:246cb8933bc8ae31bb629c624f63a64a94e0f3001b43a15f7fe414ee43565998` |
| 4 | `theorem` | [finiteAt_inner](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/finiteat-inner.md) | 212 | `result-track:8ab5202c9f0dc631f42342fb227484cb99ee2eaa9a82573824e4834f8f86181f` |
| 5 | `instance` | [nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhds.md) | 216 | `declaration-track:c4ae19a1903f5ce597b73d600f081d7e9b064c3a914c0ab9a509f5e45806e5be` |
| 6 | `instance` | [nhdsUniv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdsuniv.md) | 220 | `declaration-track:b6df76bee742b73a9d28fce9afc5fa152bb69cd2edb8acceacf840eb4d6c5652` |
| 7 | `instance` | [nhdsLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdsleft.md) | 222 | `declaration-track:db8339b69ed1dc9e066d1b6a474ae5e38b5f4bb1b5c0827fa9964d5149a95814` |
| 8 | `instance` | [nhdsRight](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdsright.md) | 226 | `declaration-track:ed869718e61bdde5a99d7a27e811f73e960f01ebdb6ab89a2fa46dc8d3bdeef3` |
| 9 | `instance` | [nhdsIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdsicc.md) | 230 | `declaration-track:17a8ce5ac616ecd3e859a5d186146b3f04e05aafaee45f8ef749f66e1f756f64` |
| 10 | `instance` | [nhdsUIcc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/nhdsuicc.md) | 235 | `declaration-track:77818ba9d2a91ea03de226046ab4e1bd6a72ed7ad9eab6852cde8dea36a49ab7` |
| 11 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-source-edition-2.md) | 259 | `result-track:650d1bfb7f08cf0602d32a097d3e3e39d05c49e84b3155dfb5f171661154f8e2` |
| 12 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-le-source-edition-2.md) | 286 | `result-track:88f505d4389032a975fd291c6856929e505eac9fc38e60e087c2cddb0bf3077a` |
| 13 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-ge-source-edition-2.md) | 307 | `result-track:29cd6078f9efdfafabbce44d22e73dcbf436e5e2f8195d593f3c527aac5c6056` |
| 14 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae.md) | 335 | `result-track:3c0d69297b638437b7acbeba19a6fb1131260607bf06b6127c8f39f892a588dd` |
| 15 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-le.md) | 351 | `result-track:373c097326f7593acd52059150f9b116e71d98e115f4b3d80829b8857bdb4d00` |
| 16 | `theorem` | [measure_integral_sub_linear_isLittleO_of_tendsto_ae_of_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-linear-islittleo-of-tendsto-ae-of-ge.md) | 369 | `result-track:0c5122d036b481e2ff0b35a70740723ff04fde078e8bb5db99a5363bcdf50955` |
| 17 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae.md) | 391 | `result-track:1e5afeb34c9028f379dd90e3022177e032ee901a2197a615573837a18c198649` |
| 18 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-right.md) | 429 | `result-track:5b1a20bf006c6ebb0808c1ac50f6d23ca159d59d903877d2d63f4fd1661e1e83` |
| 19 | `theorem` | [measure_integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/measure-integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-left.md) | 448 | `result-track:15a4f3317447c0a256a1d16217936451553c3a117ba47556ecda6b2463a8cd07` |
| 20 | `theorem` | [integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-sub-linear-islittleo-of-tendsto-ae.md) | 489 | `result-track:bfea1248dc60fa0776e2c674a67ce2bd586f6572bf3980da304fc010c44daf97` |
| 21 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae.md) | 505 | `result-track:683e8fe29e7f65c4ff19dbb22437ff0f0e0ff2569fa45769efd864e3d659ff0c` |
| 22 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-right.md) | 525 | `result-track:c31ad16856bb22ba58c68679dfd91aa02e2cc9846a53e0e2659c32384ffd85dc` |
| 23 | `theorem` | [integral_sub_integral_sub_linear_isLittleO_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-sub-integral-sub-linear-islittleo-of-tendsto-ae-left.md) | 539 | `result-track:6a921c4a8bd6c3a72f2039d83217523d47f7756ad0dae682c71dcc4d761a4474` |
| 24 | `theorem` | [integral_hasStrictFDerivAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictfderivat-of-tendsto-ae.md) | 584 | `result-track:a0e2eb287e787d7e08d729d0c92cd7a45b0ec1412e861b074314eb0afeab67a1` |
| 25 | `theorem` | [integral_hasStrictFDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictfderivat.md) | 604 | `result-track:7ea8b1f9841a2b9140a5500db49c02dc1d175a4d4c70eadacd52c5fd1eb17c9a` |
| 26 | `theorem` | [integral_hasStrictDerivAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictderivat-of-tendsto-ae-right.md) | 616 | `result-track:1582234fabcf3bfcf3e1ea69fd206488f7cf92ece7adcf9c6718c8f4c03fdcab` |
| 27 | `theorem` | [integral_hasStrictDerivAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictderivat-right.md) | 627 | `result-track:9760a7e35bcd308158cf17496223283d2bb26c4b1162e657e65a453da584b6c2` |
| 28 | `theorem` | [integral_hasStrictDerivAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictderivat-of-tendsto-ae-left.md) | 636 | `result-track:65ad6111b72b20c18d09566ecd06b8bbed7c0bc06b5b13100502ce56878a2bf9` |
| 29 | `theorem` | [integral_hasStrictDerivAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictderivat-left.md) | 646 | `result-track:c33e38e3a136c91e7ac22126f2cf9a84a2a11810b61e5a35dde92a7cfc5b2f12` |
| 30 | `theorem` | [Interval Integral Fund Thm Calculus Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasstrictderivat.md) | 655 | `result-track:a66d51c2c85fac9c6fed8444498f27ab169092dc7dcc80f5df10be07bdb22220` |
| 31 | `theorem` | [Interval Integral Fund Thm Calculus Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/deriv-integral.md) | 663 | `result-track:0d28fa93e535a53d82dcc3d724c809c1fc409bbf6db050da0650c454ccf272ab` |
| 32 | `theorem` | [integral_hasFDerivAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasfderivat-of-tendsto-ae.md) | 678 | `result-track:676c3ee59f51ffa83abe5e10c5a97d3299fa9ef765b58ed43ede56c1e8cd33d0` |
| 33 | `theorem` | [integral_hasFDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasfderivat.md) | 688 | `result-track:49d5e90e552997506231b0c5a02fe7f7fbb8ecbd95bfcdce69af87611fedb9a9` |
| 34 | `theorem` | [fderiv_integral_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/fderiv-integral-of-tendsto-ae.md) | 698 | `result-track:9cb5162f0e7103a5643c678b5441fa62b2d038ba336a0b7578eb30d1f6eaa6b8` |
| 35 | `theorem` | [fderiv_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/fderiv-integral.md) | 708 | `result-track:581e1e4ea269f669612a1c439b6ba716d4e694cf88738378a9a962e339e7f6a1` |
| 36 | `theorem` | [integral_hasDerivAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivat-of-tendsto-ae-right.md) | 717 | `result-track:8d690bb3ebf98148209e36aca8d7ac3c218370723f9522a23aae9e3201ab4f7f` |
| 37 | `theorem` | [integral_hasDerivAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivat-right.md) | 724 | `result-track:973c867a2246a9a050e18632487c2b7b37ebc5762c0f6d9a0a6314159f6e144d` |
| 38 | `theorem` | [deriv_integral_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/deriv-integral-of-tendsto-ae-right.md) | 731 | `result-track:9278b9efaa613aa49ddd4256f4f8ce9845dd8ff61d1edfe8c7e2e6570823e88d` |
| 39 | `theorem` | [deriv_integral_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/deriv-integral-right.md) | 738 | `result-track:0f9eb70696f358bb9e6d863fa23a692ab4d3e77d35f05db218ce0ae9d7ca44fd` |
| 40 | `theorem` | [integral_hasDerivAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivat-of-tendsto-ae-left.md) | 745 | `result-track:d9e2211580152c9e6c7c4d6f85efa61f56362c9ec2da055aa5bd5727a11e8485` |
| 41 | `theorem` | [integral_hasDerivAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivat-left.md) | 752 | `result-track:d7d6689466581fab031b4d710df6d1c2bbbfefcc5e455c0bda919de09f48c2b7` |
| 42 | `theorem` | [deriv_integral_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/deriv-integral-of-tendsto-ae-left.md) | 759 | `result-track:6d23099f113fd607a01e91d674c9a4f9186a30ee75a41aee3865409241f858c7` |
| 43 | `theorem` | [deriv_integral_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/deriv-integral-left.md) | 766 | `result-track:5cd7b8f1e7c059147a6aea6621abcb62be1665a178802f27f22fb4d6e88fcf07` |
| 44 | `theorem` | [integral_hasFDerivWithinAt_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasfderivwithinat-of-tendsto-ae.md) | 788 | `result-track:2ec6a0537c59568fce9c7a11fb92fc5189927cec53c5e035e7dd8f23a292ba79` |
| 45 | `theorem` | [integral_hasFDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasfderivwithinat.md) | 816 | `result-track:520cfe3ad38bc5a9749fdce98abc32ee27f6ca39b6c77f792b3321c26189704e` |
| 46 | `macro` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/macro.md) | 827 | `declaration-track:5b6f718c3f91b5261be050702a0342268c8d5d8f797838c9e95390b77b7929b5` |
| 47 | `theorem` | [fderivWithin_integral_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/fderivwithin-integral-of-tendsto-ae.md) | 843 | `result-track:21e70cb5e01a94e7fb3bde7ae0312f212d924828dc67a9ef9d660592b0a0712e` |
| 48 | `theorem` | [integral_hasDerivWithinAt_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivwithinat-of-tendsto-ae-right.md) | 856 | `result-track:6e1ebbafc82d6d5cdbda0935275e214ce520f4ad30583907ea6510558832c8e0` |
| 49 | `theorem` | [integral_hasDerivWithinAt_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivwithinat-right.md) | 866 | `result-track:d50d61a0860df7c98ef9d87464245080a92e6ee809e596de1cb1e01e23f53585` |
| 50 | `theorem` | [derivWithin_integral_of_tendsto_ae_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/derivwithin-integral-of-tendsto-ae-right.md) | 874 | `result-track:b25bbfa99fd5ac280bbfb863cc76f0428863bb9dfb5105d49df86688e23889c9` |
| 51 | `theorem` | [derivWithin_integral_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/derivwithin-integral-right.md) | 884 | `result-track:40c5274f982361db08550bec3f46680c804c18bc2a95f6950eb5e4b8811ab377` |
| 52 | `theorem` | [integral_hasDerivWithinAt_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivwithinat-of-tendsto-ae-left.md) | 894 | `result-track:91e29bb1ad20c66cc4959dca24d5b288d2b6de2876a99852531f942cc1e75d72` |
| 53 | `theorem` | [integral_hasDerivWithinAt_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-hasderivwithinat-left.md) | 904 | `result-track:b04bbc330aeaf4557b0de3e9e85cc13ec273084d91ec0fcad1381c89b4b64f98` |
| 54 | `theorem` | [derivWithin_integral_of_tendsto_ae_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/derivwithin-integral-of-tendsto-ae-left.md) | 912 | `result-track:dcfc895dfb24b67343a32b25f99f98d318f2ba0022c3c64e2d4c517f3ce6e18f` |
| 55 | `theorem` | [derivWithin_integral_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/derivwithin-integral-left.md) | 922 | `result-track:ccb096beeff8376c03d35b98b2cd0a8eab82316b225a6d33c9e314d2e88aea89` |
| 56 | `theorem` | [differentiableOn_integral_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/differentiableon-integral-of-continuous.md) | 930 | `result-track:9d9150a88f7c94dea399f5f556499f421b4a321834704ab0a15ce6a233c22ce5` |
| 57 | `theorem` | [sub_le_integral_of_hasDeriv_right_of_le_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/sub-le-integral-of-hasderiv-right-of-le-ico.md) | 969 | `result-track:81730942f3f2530e087274ec12684ca3cf724291207c909d6c9961606570fcec` |
| 58 | `theorem` | [sub_le_integral_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/sub-le-integral-of-hasderiv-right-of-le.md) | 1063 | `result-track:cf7f2c8e87ebdbe9ebd8148b4f02d3b25782b374e183c0a3ea638438581a5670` |
| 59 | `theorem` | [integral_le_sub_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-le-sub-of-hasderiv-right-of-le.md) | 1089 | `result-track:7e09b65f93f7366965e6f8812dcfc01457d54ec574ad06193cfca246501fc092` |
| 60 | `theorem` | [integral_eq_sub_of_hasDeriv_right_of_le_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderiv-right-of-le-real.md) | 1099 | `result-track:80285c156201c0499f5158f30f0abaa9dc478ab2dd2a28f7fa27eb8b51cc159d` |
| 61 | `theorem` | [integral_eq_sub_of_hasDeriv_right_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderiv-right-of-le.md) | 1110 | `result-track:75ea09f26f3b7ca9eefb2c7e29f22b4de6a981401bf671c2582be0f3af3568f2` |
| 62 | `theorem` | [integral_eq_sub_of_hasDeriv_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderiv-right.md) | 1122 | `result-track:c2b91bf3578ea0249603cbb1a83d2da037e31e40ec04b9cf032adacfe5578868` |
| 63 | `theorem` | [integral_eq_sub_of_hasDerivAt_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderivat-of-le.md) | 1134 | `result-track:2f0ac2e6ccbaffd9f1bc7121325289f6cfe5b33e279bcee70c2c6c35a3110838` |
| 64 | `theorem` | [integral_eq_sub_of_hasDerivAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderivat.md) | 1142 | `result-track:bf5d7178841d3625458262a04a89c213b68f29f79e938ba6b14abee06555d0ca` |
| 65 | `theorem` | [integral_eq_sub_of_hasDerivAt_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-eq-sub-of-hasderivat-of-tendsto.md) | 1147 | `result-track:4a94ca3060f8d121f513d5ad0889a2ebe2416fb78937f83494e67efe2e91b72d` |
| 66 | `theorem` | [integral_deriv_eq_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-deriv-eq-sub-source-edition-2.md) | 1168 | `result-track:58dfbe68dfbb153add86e87854243b9cdda0fbb502721f5ffd7b93c9aee3c91b` |
| 67 | `theorem` | [integral_deriv_eq_sub'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-deriv-eq-sub.md) | 1172 | `result-track:34b027e5a500a20b1c1b74d8cda7532e360f9db7d7f728e6664a0c0e1010aaba` |
| 68 | `lemma` | [integral_unitInterval_deriv_eq_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integral-unitinterval-deriv-eq-sub.md) | 1181 | `result-track:5cd4161037e0215ef664ef6aa80219029111f0183b3b950e2522ef826dcf6a88` |
| 69 | `theorem` | [integrableOn_deriv_right_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integrableon-deriv-right-of-nonneg.md) | 1201 | `result-track:9b7058ca4f3df40fece0675f93cbfda2a5a31e53d0136e7cf200b06f770dfc02` |
| 70 | `theorem` | [integrableOn_deriv_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/integrableon-deriv-of-nonneg.md) | 1236 | `result-track:0cbcd2bf2464a9049e73935de724e32e83e7e385aff9bff1f1ae4027654497ca` |
| 71 | `theorem` | [intervalIntegrable_deriv_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntervalIntegralFundThmCalculusNamespaced.lean/declarations/intervalintegrable-deriv-of-nonneg.md) | 1243 | `result-track:6fdfdfa48f65d03e1b9e1ac99306805b806d2cd9cfb4ddf9ce8040a8391818c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f001bb486e5b806e53dfb6d7c403ab68220ef3976163cd34c82770152eafa43e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
